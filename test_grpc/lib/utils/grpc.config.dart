import 'package:grpc/grpc.dart';
import 'package:test_grpc/protos/auth.pbgrpc.dart';

/// configuration for grpc client
class GrpcConfig {
  static late AuthSvcClient authClient;

  /// initialize config for grpc
  static Future<void> init() async {
    final channel = ClientChannel(
      '0.0.0.0',
      port: 4112,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    authClient = AuthSvcClient(channel,
        options: CallOptions(
          metadata: {'Authorization': 'auth-test'},
        ));
  }
}
