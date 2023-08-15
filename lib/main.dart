import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/features/auth/application/auth_service_impl.dart';
import 'app/features/auth/data/repository/auth_repository_impl.dart';
import 'app/features/auth/data/repository/module.dart';
import 'app/features/auth/data/source/module.dart';
import 'app/features/auth/data/source/network_impl.dart';
import 'app/features/auth/data/source/local_impl.dart';

import 'app/app.dart';
import 'app/services/local/hive_service.dart';
import 'app/services/remote/config/dio_client.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // for initializing env
  await dotenv.load(fileName: ".env");

  // for initializing local storage
  final hiveService = HiveService();
  await hiveService.hiveInit();

  // dioClient
  final dio = Dio();
  final httpClient = HttpClient();
  final dioClient = DioClient(
    dio: dio,
    hiveService: hiveService,
    httpClient: httpClient,
  );

  // authRepository
  final authNetwork = NetworkImpl(dioClient);
  final authLocal = LocalImpl(hiveService);
  final authRepository = AuthRepositoryImpl(
    local: authLocal,
    network: authNetwork,
  );

  // authService
  final authService = AuthServiceImpl(authRepository);
  await authService.initLogin(); 

  // FlutterNativeSplash.remove(); 

  configLoading();

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
        authRepositoryProvider.overrideWithValue(authRepository),
      ],
      child: const App(),
    ),
  );
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..animationDuration = const Duration(milliseconds: 300)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..maskType = EasyLoadingMaskType.black
    ..indicatorSize = 45.0
    ..radius = 8
    // ..userInteractions = true
    ..dismissOnTap = false
    ..animationStyle = EasyLoadingAnimationStyle.opacity;
}
