import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repository/auth_repository.dart';
import '../source/module.dart';

import 'auth_repository_fake.dart';
import 'auth_repository_impl.dart';

final authProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    network: ref.read(networkProvider),
    local: ref.read(localProvider),
  );
});

final authFakeProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryFake(ref.read(localProvider));
});
