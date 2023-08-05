import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repository/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((_) {
  // return AuthRepositoryImpl(
  //   network: ref.read(authNetworkProvider),
  //   local: ref.read(authLocalProvider),
  // );
  throw UnimplementedError();
});