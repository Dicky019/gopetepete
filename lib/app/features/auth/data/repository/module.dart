import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repository/auth_repository.dart';
// import '../source/module.dart';

// import 'auth_repository_fake.dart';
// import 'auth_repository_impl.dart';

final authRepositoryProvider = Provider<AuthRepository>((_) {
  // return AuthRepositoryImpl(
  //   network: ref.read(authNetworkProvider),
  //   local: ref.read(authLocalProvider),
  // );
  throw UnimplementedError();
});

final authFakeProvider = Provider<AuthRepository>((_) {
  // return AuthRepositoryFake(ref.read(authLocalProvider));
  throw UnimplementedError();
});
