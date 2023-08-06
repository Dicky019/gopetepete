import 'dart:io';

import '../request/daftar_driver_request.dart';
import '/app/services/remote/config/result.dart';

abstract class Network {
  Future<Result<String>> daftarDriver({
    required DaftarDriverRequest daftarDriverRequest,
  });

  Future<String?> uploadImage({
    required File image,
    required String imageName,
  });
}
