import 'package:flutter_application_1/app/services/location/geolocation_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../auth/data/repository/module.dart';
import '../data/repository/module.dart';
import 'driver_service_impl.dart';

final driverServiceProvider = Provider<DriverServiceImpl>((ref) {
  return DriverServiceImpl(
    ref.read(driverRepositoryProvider),
    ref.read(authRepositoryProvider),
    ref.read(geoLocationServiceProvider),
  );
});
