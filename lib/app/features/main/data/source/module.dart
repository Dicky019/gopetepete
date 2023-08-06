import '/app/services/remote/config/config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'network.dart';
import 'network_impl.dart';

final homeNetworkProvider = Provider<Network>((ref) {
  return NetworkImpl(ref.read(dioClientProvider));
  // throw UnimplementedError();
});
