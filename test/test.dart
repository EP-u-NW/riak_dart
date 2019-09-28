import 'package:riak_dart/riak_dart.dart';

void main() async => clientTest();

Future<void> clientTest() async {
  RiakClient c = await RiakClient.connect(host: '192.168.178.145');
  c.onError = print;
  await c.ping();
  print('Pong');
  await c.close();
}
