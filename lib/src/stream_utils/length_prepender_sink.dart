import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

class LengthPrependerSink extends StreamSink<List<int>> {
  final StreamSink<List<int>> _wrapped;
  LengthPrependerSink(this._wrapped);

  Future<dynamic> maybeFlush() => (_wrapped as IOSink)?.flush();

  void addBytesRaw(ByteData data) {
    add(new Uint8List.view(data.buffer));
  }

  @override
  void add(List<int> event) {
    _wrapped.add(
        Uint8List.view((new ByteData(4)..setInt32(0, event.length)).buffer));
    _wrapped.add(event);
  }

  @override
  Future get done {
    return _wrapped.done;
  }

  @override
  Future close() {
    return _wrapped.close();
  }

  @override
  Future addStream(Stream<List<int>> stream) async {
    await for (List<int> event in stream) {
      add(event);
    }
  }

  void addFlat(List<List<int>> flat) {
    int size =
        flat.fold(0, (int value, List<int> element) => value + element.length);
    _wrapped.add(Uint8List.view((new ByteData(4)..setInt32(0, size)).buffer));
    flat.forEach(_wrapped.add);
  }

  @override
  void addError(Object error, [StackTrace stackTrace]) {
    _wrapped.addError(error, stackTrace);
  }
}
