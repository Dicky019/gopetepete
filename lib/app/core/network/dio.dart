import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider(
  (ref) {
    return Dio(
      BaseOptions(
        baseUrl: dotenv.get('BASE_URL'),
      ),
    );
  },
);
