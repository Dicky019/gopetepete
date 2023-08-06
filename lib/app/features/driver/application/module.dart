import 'package:flutter_application_1/app/features/driver/application/daftar_driver_service_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/repository/module.dart';

final daftarDriverServiceProvider = Provider<DaftarDriverServiceImpl>((ref) {
  return DaftarDriverServiceImpl(ref.read(daftarDriverRepositoryProvider));
});
