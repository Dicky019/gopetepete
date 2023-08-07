import 'package:flutter_application_1/app/services/local/hive_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/app/services/remote/config/config.dart';
import 'local_impl.dart';
import 'network_impl.dart';

final daftarDriverNetworkProvider = Provider<NetworkImpl>((ref) {
  return NetworkImpl(ref.read(dioClientProvider));
});

final daftarDriverLocalProvider = Provider<LocalImpl>((ref) {
  return LocalImpl(ref.read(hiveServiceProvider));
});
