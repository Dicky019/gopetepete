import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'driver_repository_impl.dart';
import '../source/module.dart';

final driverRepositoryProvider = Provider<DriverRepositoryImpl>((ref) {
  final network = ref.read(driverNetworkProvider);
  final local = ref.read(driverLocalProvider);
  return DriverRepositoryImpl(network,local);
});
