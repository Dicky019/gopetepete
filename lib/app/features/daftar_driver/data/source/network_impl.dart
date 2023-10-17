import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import '../request/daftar_driver_request.dart';

import '../response/daftar_driver_response.dart';
import '/app/services/remote/config/config.dart';
import 'network.dart';

class NetworkImpl extends Network {
  final DioClient _dioClient;
  final _storageImageDriver = FirebaseStorage.instance;
  final metadata = SettableMetadata(contentType: "image/jpeg");

  NetworkImpl(
    this._dioClient,
  );

  @override
  Future<String?> uploadImage({
    required File image,
    required String imageName,
  }) async {
    try {
      final path = _storageImageDriver.ref("/image-driver/$imageName");
      await path.putFile(image, metadata);

      final url = await path.getDownloadURL();
      return url;
    } catch (error) {
      log("error uploadImage", error: error);
      return null;
    }
  }

  @override
  Future<Result<DaftarDriverResponse>> daftarDriver({
    required DaftarDriverRequest daftarDriverRequest,
  }) async {
    try {
      final response = await _dioClient.post(
        Endpoint.driver,
        data: daftarDriverRequest.toJson(),
      );
      return Result.success(DaftarDriverResponse.fromJson(response));
    } catch (error, stackTrace) {
      return Result.failure(
        NetworkExceptions.getDioException(error, stackTrace),
        stackTrace,
      );
    }
  }

  @override
  Future<Result<String>> cekDriver({
    required DaftarDriverFormAwal daftarDriverRequest,
  }) async {
    try {
      final response = await _dioClient.put(
        Endpoint.driver,
        data: daftarDriverRequest.toJson(),
      );
      return Result.success(response["data"]);
    } catch (error, stackTrace) {
      return Result.failure(
        NetworkExceptions.getDioException(error, stackTrace),
        stackTrace,
      );
    }
  }
}
