import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/app.dart';
import 'app/core/services/local/hive_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // for initializing env
  await dotenv.load(fileName: ".env");

  // for initializing local storage
  final appStorage = HiveService();
  await appStorage.initAppStorage();

  runApp(
    ProviderScope(
      overrides: [
        hiveServiceProvider.overrideWithValue(appStorage),
      ],
      child: const App(),
    ),
  );
}
