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