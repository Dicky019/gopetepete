import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../auth/data/repository/module.dart';
import '../data/repository/module.dart';
import 'daftar_driver_service_impl.dart';

final daftarDriverServiceProvider = Provider<DaftarDriverServiceImpl>((ref) {
  return DaftarDriverServiceImpl(ref.read(daftarDriverRepositoryProvider),ref.read(authRepositoryProvider));
});
