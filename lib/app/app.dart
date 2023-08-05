import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constants/theme/app_theme.dart';
import 'router/router.dart';

class App extends ConsumerWidget {
  /// [App]
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appTheme = ref.read(appThemeProvider);
    final router = ref.read(routerProvider);

    return ScreenUtilInit(
      builder: (context, child) => child!,
      designSize: const Size(360, 640),
      minTextAdapt: true,
      child: MaterialApp.router(
        // TODO: add your app name here
        title: 'Go Pete Pete',
        // TODO: add your theme here
        theme: appTheme.lightTheme,
        darkTheme: appTheme.darkTheme,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
        locale: const Locale("id"),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
