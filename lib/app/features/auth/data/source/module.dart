import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/local_storage/app_storage.dart';
import '../../../../core/network/dio.dart';

import 'local.dart';
import 'network.dart';
import 'network_impl.dart';
import 'local_impl.dart';

final networkProvider = Provider<Network>((ref) {
  return NetworkImpl(ref.read(dioProvider));
});

final localProvider = Provider<Local>((ref) {
  return LocalImpl(ref.read(appStorageProvider));
});
