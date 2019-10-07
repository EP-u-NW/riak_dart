# riak_dart
An unofficial Riak client for dart based on [Riaks ProtoBuf API](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/).

### riak_dart library

### generated_protobuf library

## Example
```dart
import 'package:riak_dart/riak_dart.dart';
import 'package:riak_dart/generated_protobuf.dart' hide MapEntry;
import 'dart:convert';

Future<void> main() async {
  // Initiate a connection
  RiakClient client = await RiakClient.connect(host: '192.168.178.145');
  // Set the error callback
  client.onError = print;

  // Choose a bucket to use
  List<int> bucket = utf8.encode('default');
  // Create a key
  List<int> key = utf8.encode('Hello');
  // Create some content
  RpbContent content = new RpbContent();
  content.value = utf8.encode('World');
  // Store the content
  await client.storeObject(bucket: bucket, key: key, content: content);

  // Fetch content
  RpbGetResp response = await client.fetchObject(bucket: bucket, key: key);
  if (response.content.isNotEmpty) {
    print(utf8.decode(response.content.first.value));
  } else {
    print('Nothing found using this key!');
  }

  // Close the client
  await client.closeGracefully();
}
```

## Useful Notes

### Error handling

### Experimental TLS/SSL
Documentation on how to initiate a TLS encrypted connection with Riak is very sparse.
The `startTls` method of RiakClient should therefor be considered experimental.
Any kind of feedback, whether it works or breaks things, is very welcomed!

### The MapEntry Problem
The `generate_protobuf` library was generated from an unaltered version Riaks ProtoBuf source files.
One of the messages defined there is `MapEntry`, what leads to a name collision with the build-in class `MapEntry` from `dart:core`.
If you need darts `MapEntry` class explicitly in a file that imports from `generated_protobuf` consider 
```dart
import 'package:riak_dart/generated_protobuf.dart' hide MapEntry;
```
if you don't need the generated `MapEntry` class, or
```dart
import 'package:riak_dart/generated_protobuf.dart' hide MapEntry;
import 'package:riak_dart/generated_protobuf.dart' as proto show MapEntry;
```
if you need it and refer to it as `proto.MapEntry`.

### Performance optimization by Parallelism
Most methods return a future with a response object matching the request, some streaming methodes use a stream of response objects to represent the method result.
Sometimes, not awaiting a future, but executing multiple requests and awaiting a collecion of futures, can increase performance signicifantly.
For example, to store multiple objects, consider this:
```dart
Future storeMultiple(RiakClient client, Map<String, String> keyValueMap) {
  List<int> bucket = utf8.encode('default');
  Iterable<Future> storeFutures = keyValueMap.keys.map<Future>(
      (String key) => client.storeObject(
          bucket: bucket,
          key: utf8.encode(key),
          content: new RpbContent()..value = utf8.encode(keyValueMap[key])));
  return Future.wait(storeFutures);
}
```
The more elements the keyValueMap contains, the faster this code will run compared to awaiting every storing response in sequence due to optimizations on network level.
