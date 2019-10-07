/// The core library of the riak_dart package.
/// It contains the [RiakClient], which provides a request method for each defined Riak ProtoBuf API request.
/// 
/// Since large parts of the method documentation of [RiakClient] are just copied from the [Riak ProtoBuf API](https://docs.riak.com/riak/kv/2.2.3/developing/api/protocol-buffers/), the documentation of this class does not respect the dart documentation guidelines; also grammer and spelling is sometimes inconsistent, camel case (dart) is mixed with snake case (protobuf), and dead/outdatet links can occur.
library riak_dart;
export 'src/abstract_client.dart' hide AbstractClient;
export 'src/messages.dart';
export 'src/riak_client.dart';