import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/services/local/hive_service.dart';
import '/app/services/remote/config/config.dart';
import 'local_impl.dart';
import 'network_impl.dart';

final driverNetworkProvider = Provider<NetworkImpl>((ref) {
  return NetworkImpl(ref.read(dioClientProvider));
});

final driverLocalProvider = Provider<LocalImpl>((ref) {
  return LocalImpl(ref.read(hiveServiceProvider));
});
