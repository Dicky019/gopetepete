import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'daftar_driver_repository_impl.dart';
import '../source/module.dart';

final daftarDriverRepositoryProvider = Provider<DaftarDriverRepositoryImpl>((ref) {
  final network = ref.read(daftarDriverNetworkProvider);
  return DaftarDriverRepositoryImpl(network);
});
