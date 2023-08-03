import 'package:flutter_application_1/app/features/auth/domain/model/user.dart';

abstract class Network {
  // TODO: add your impl here

  Future<User?> loginGoogle(String email);

}
