import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'sign_in_driver_repository.dart';

class SignInDriverRepositoryImpl extends SignInDriverRepository {
  // TODO add your methods here
}

final signInDriverRepositoryProvider = Provider<SignInDriverRepository>((ref) {
  return SignInDriverRepositoryImpl();
});
