import 'package:flutter_application_1/app/features/driver/data/request/driver_request.dart';

import 'package:flutter_application_1/app/services/remote/config/result.dart';

import '../../auth/data/repository/auth_repository_impl.dart';
import '../data/repository/driver_repository_impl.dart';
import 'driver_service.dart';

class DriverServiceImpl implements DriverService {
  final DriverRepositoryImpl _driverRepository;
  final AuthRepositoryImpl _authRepository;
  DriverServiceImpl(this._driverRepository, this._authRepository);

  @override
  Future<Result<void>> updateLocation(DriverLocationRequest driverLocation) {
   return _driverRepository.updateLocation(driverLocation);
  }

  @override
  Future<void> logout() {
    return _authRepository.logout();
  }
}
