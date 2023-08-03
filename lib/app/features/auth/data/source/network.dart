import 'package:flutter_application_1/app/core/services/remote/config/config.dart';

abstract class Network {
  // TODO: add your impl here

  Future<Result<String>> loginGoogle();
}
