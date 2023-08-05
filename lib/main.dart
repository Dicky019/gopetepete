import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/features/auth/application/authentication_service.dart';
import 'app/features/auth/data/repository/auth_repository_impl.dart';
import 'app/features/auth/data/source/module.dart';
import 'app/features/auth/data/source/network_impl.dart';
import 'app/features/auth/data/source/local_impl.dart';

import 'app/app.dart';
import 'app/services/local/hive_service.dart';
import 'app/services/remote/api/auth_api.dart';
import 'app/services/remote/config/dio_client.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // for initializing env
  await dotenv.load(fileName: ".env");

  // for initializing local storage
  final hiveService = HiveService();
  await hiveService.hiveInit();

  final dio = Dio();
  final httpClient = HttpClient();

  final dioClient = DioClient(
    dio: dio,
    hiveService: hiveService,
    httpClient: httpClient,
  );

  final api = AuthApi(dioClient);
  final authNetwork = NetworkImpl(api);
  final authLocal = LocalImpl(hiveService);

  final authRepository = AuthRepositoryImpl(
    local: authLocal,
    network: authNetwork,
  );

  final authService = AuthService(authRepository);

  runApp(
    ProviderScope(
      overrides: [
        // init services
        hiveServiceProvider.overrideWithValue(hiveService),
        dioClientProvider.overrideWithValue(dioClient),

        // init auth service
        authNetworkProvider.overrideWithValue(authNetwork),
        authLocalProvider.overrideWithValue(authLocal),
        authServiceProvider.overrideWithValue(authService),
      ],
      child: const App(),
    ),
  );
}
