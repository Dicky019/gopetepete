import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppTheme {
  /// for getting light theme
  ThemeData get lightTheme {
    return ThemeData.light();
  }

  /// for getting dark theme
  ThemeData get darkTheme {
    return ThemeData.dark();
  }
}

/// for providing app theme [AppTheme]
final appThemeProvider = Provider<AppTheme>((_) => AppTheme());
