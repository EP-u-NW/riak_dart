import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:pedantic/pedantic.dart';
import 'package:protobuf/protobuf.dart';

import 'messages.dart';
import 'stream_utils/length_based_stream_transformer.dart';
import 'stream_utils/length_prepender_sink.dart';
import '../generated_protobuf.dart';

const List<int> _emptyList = const <int>[];

typedef void ErrorCallback(dynamic error);

abstract class AbstractClient {
  ErrorCallback onError;
  final List<_RequestResult> _responseQueue;
  Socket _socket;
  LengthPrependerSink _out;
  Completer<void> _empty;

  AbstractClient(this._socket)
      : this._responseQueue = new List<_RequestResult>(),
        this._out = new LengthPrependerSink(_socket) {
    _socket
        .transform(new LengthBasedStreamTransformer())
        .listen(_handle, onError: _onError);
  }

  void _onError(dynamic error, [StackTrace stackTrace]) {
    onError(error);
  }

  void _handle(Uint8List message) {
    if (message.isNotEmpty) {
      int messageCode = message.first;
      MessageBuilder builder = builders[messageCode];
      if (builder != null) {
        List<int> content = new Uint8List.view(
            message.buffer, 1 + message.offsetInBytes, message.length - 1);
        GeneratedMessage generatedMessage = builder(content);
        _handleMessage(messageCode, generatedMessage);
      } else {
        _onError(new UnknownMessageCodeException(messageCode: messageCode));
      }
    } else {
      _onError(new EmptyMessageException());
    }
  }

  void _handleMessage(int messageCode, dynamic message) {
    if (_responseQueue.isNotEmpty) {
      if (messageCode == MessageCode.rpbErrorResp) {
        _RequestResult response = _responseQueue.removeAt(0);
        response.streamController
            .addError(new RpbErrorRespException(error: message));
        _close(response);
      } else if (_responseQueue.first.expectedResponseCode == messageCode) {
        _responseQueue.first.streamController.add(message);
        if (_responseQueue.first.streamingCall) {
          if (message.hasDone() && message.done) {
            _close(_responseQueue.removeAt(0));
          }
        } else {
          _close(_responseQueue.removeAt(0));
        }
      } else {
        _RequestResult response = _responseQueue.removeAt(0);
        response.streamController.addError(new WrongResponseCodeException(
            expected: response.expectedResponseCode, got: messageCode));
        _close(response);
      }
      if (_responseQueue.isEmpty && _empty != null) {
        _empty.complete();
      }
    } else {
      _onError(new UnexpectedMessageException(messageCode: messageCode));
    }
  }

  void _close(_RequestResult r) {
    unawaited(r.streamController.close());
  }

  Future<dynamic> flush() => _out.flush();

  Future<dynamic> close() => _out.close();

  Future<dynamic> closeGracefully() async {
    if (_responseQueue.isEmpty) {
      await close();
    } else {
      _empty = new Completer<void>();
      await _empty.future;
      _empty = null;
      await close();
    }
  }

  Future<void> startTls(
      {dynamic host,
      SecurityContext context,
      bool onBadCertificate(X509Certificate certificate)}) async {
    await sendRequest<void>(requestCode: MessageCode.rpbStartTls).last;
    _socket = await SecureSocket.secure(_socket,
        host: host, context: context, onBadCertificate: onBadCertificate);
    _out = new LengthPrependerSink(_socket);
    _socket
        .transform(new LengthBasedStreamTransformer())
        .listen(_handle, onError: _onError);
  }

  Stream<V> sendRequest<V>(
      {@required int requestCode,
      GeneratedMessage message,
      bool streamingCall = false}) {
    int expectedResponseCode = expectedResponseTypes[requestCode];
    if (expectedResponseCode != null) {
      _RequestResult<V> response = new _RequestResult<V>(
          expectedResponseCode: expectedResponseCode,
          streamingCall: streamingCall);
      _responseQueue.add(response);
      List<int> bytes = message?.writeToBuffer() ?? _emptyList;
      _out.addFlat(<List<int>>[
        <int>[requestCode],
        bytes
      ]);
      return response.streamController.stream;
    } else {
      throw new NotSendableMessageException(requestCode: requestCode);
    }
  }
}

class _RequestResult<V> {
  final StreamController<V> streamController;
  final int expectedResponseCode;
  final bool streamingCall;

  _RequestResult(
      {@required this.expectedResponseCode, @required this.streamingCall})
      : this.streamController = new StreamController<V>();
}

class UnexpectedMessageException implements Exception {
  final int messageCode;
  UnexpectedMessageException({@required this.messageCode});

  @override
  String toString() {
    return 'UnexpectedMessageException: Received a message with message code $messageCode while not expecting a message';
  }
}

class EmptyMessageException implements Exception {
  @override
  String toString() {
    return 'EmptyMessageException: Received an empty message without message code!';
  }
}

class UnknownMessageCodeException implements Exception {
  final int messageCode;
  UnknownMessageCodeException({@required this.messageCode});

  @override
  String toString() {
    return 'UnknownMessageCodeException: Received a message with the unknown message code $messageCode';
  }
}

class WrongResponseCodeException implements Exception {
  final int expected;
  final int got;
  WrongResponseCodeException({@required this.expected, @required this.got});

  @override
  String toString() {
    return 'WrongResponseCodeException: Expected a message with message code $expected but received one with $got';
  }
}

class NotSendableMessageException implements Exception {
  final int requestCode;
  NotSendableMessageException({@required this.requestCode});

  @override
  String toString() {
    return 'NotSendableMessageException: Tried sending a message with message code $requestCode, what seems not allowed.';
  }
}

class RpbErrorRespException implements Exception {
  final RpbErrorResp error;
  int get errorCode => error.errcode;
  String get errorMessage => utf8.decode(error.errmsg);

  RpbErrorRespException({@required this.error});

  @override
  String toString() {
    return 'RpbErrorRespException:\r\nError message: $errorMessage\r\nError code: $errorCode';
  }
}
