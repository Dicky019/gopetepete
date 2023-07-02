import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'driver_verification_repository.dart';

class DriverVerificationRepositoryImpl extends DriverVerificationRepository {
  // TODO add your methods here
}

final driverVerificationRepositoryProvider = Provider<DriverVerificationRepository>((ref) {
  return DriverVerificationRepositoryImpl();
});
