import 'package:dio/dio.dart';

import '../../domain/model/user.dart';
import 'network.dart';

class NetworkImpl extends Network {
  final Dio dio;

  NetworkImpl(this.dio);

  @override
  Future<User?> loginGoogle(String email) async {
    // TODO: implement loginGoogle
    final data = {
      "email": email,
    };
    await dio.get("/auth/login", data: data);
    return null;
  }
}
