import 'dart:io';

import '../request/daftar_driver_request.dart';
import '../response/daftar_driver_response.dart';
import '/app/services/remote/config/result.dart';

abstract class Network {
  Future<Result<DaftarDriverResponse>> daftarDriver({
    required DaftarDriverRequest daftarDriverRequest,
  });

  Future<String?> uploadImage({
    required File image,
    required String imageName,
  });

  Future<Result<String>> cekDriver({
    required DaftarDriverFormAwal daftarDriverRequest,
  });
}
