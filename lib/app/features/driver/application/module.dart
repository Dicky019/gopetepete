import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../auth/data/repository/module.dart';
import '../data/repository/module.dart';
import 'driver_service_impl.dart';

final driverServiceProvider = Provider<DriverServiceImpl>((ref) {
  return DriverServiceImpl(ref.read(driverRepositoryProvider),ref.read(authRepositoryProvider));
});
