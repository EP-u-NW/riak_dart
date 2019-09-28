import 'dart:async';
import 'dart:typed_data';

class LengthBasedStreamTransformer
    extends StreamTransformerBase<Uint8List, Uint8List> {
  @override
  Stream<Uint8List> bind(Stream<Uint8List> stream) async* {
    int index = 0;
    Uint8List out;
    int outLength;
    ByteData length = new ByteData(4);
    int lengthIndex = 0;
    await for (Uint8List bytes in stream) {
      int bytesIndex = 0;
      int bytesLeft = bytes.length;
      while (bytesLeft > 0) {
        if (lengthIndex != 4) {
          int needed = 4 - lengthIndex;
          int add = bytesLeft > needed ? needed : bytesLeft;
          for (int i = 0; i < add; i++) {
            length.setUint8(lengthIndex, bytes[i + bytesIndex]);
            lengthIndex++;
          }
          bytesIndex += add;
          bytesLeft -= add;
          if (lengthIndex == 4) {
            outLength = length.getInt32(0);
          }
        }
        if (bytesLeft > 0 && outLength != null) {
          if ((outLength <= bytesLeft) && out == null) {
            yield new Uint8List.view(bytes.buffer, bytesIndex+bytes.offsetInBytes, outLength);
            bytesIndex += outLength;
            bytesLeft -= outLength;
            outLength = null;
            lengthIndex = 0;
          } else {
            if (out == null) {
              out = new Uint8List(outLength);
              index = 0;
            }
            int needed = outLength - index;
            int add = bytesLeft > needed ? needed : bytesLeft;
            out.setRange(index, index + add, bytes, bytesIndex);
            bytesIndex += add;
            bytesLeft -= add;
            index += add;
            if (outLength == index) {
              yield out;
              out = null;
              outLength = null;
              lengthIndex = 0;
            }
          }
        }
      }
    }
    if (lengthIndex != 0) {
      throw new DataLeftException();
    }
  }
}

class DataLeftException implements Exception {
  @override
  String toString() {
    return 'The stream bound to this transformer was closed or contains no more elements, but there is an unfinished message still in construction.';
  }
}
