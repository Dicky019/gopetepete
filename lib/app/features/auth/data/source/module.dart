import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/services/local/hive_service.dart';
import '../../../../core/services/remote/api/auth_api.dart';
import 'local.dart';
import 'network.dart';
import 'network_impl.dart';
import 'local_impl.dart';

final networkProvider = Provider<Network>((ref) {
  return NetworkImpl(ref.read(authApiProvider));
});

final localProvider = Provider<Local>((ref) {
  return LocalImpl(ref.read(hiveServiceProvider));
});
