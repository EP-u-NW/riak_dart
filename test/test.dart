import 'package:riak_dart/riak_dart.dart';
import 'dart:convert';

List<int> bucket = utf8.encode('default');

void main() async => clientTest();

Future<void> clientTest() async {
  RiakClient c = await RiakClient.connect(host: '192.168.178.145');
  c.onError = print;
  await c.ping();
  print('Pong');
  List<int> key = utf8.encode('key');
  RpbContent content = new RpbContent();
  content.value = utf8.encode('value');
  await c.storeObject(
    bucket: bucket,
    key: key,
    content: content,
  );
  print('Stored');
  RpbGetResp resp = await c.fetchObject(bucket: bucket, key: key);
  resp.content.forEach((RpbContent c) => print(utf8.decode(c.value)));
  await c.close();
}
