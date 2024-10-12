import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/config/ui/colors.dart';

class ATheme {
  static ThemeData get lightTheme => _theme(AColors.lightColorScheme);

  static ThemeData get darkTheme => _theme(AColors.darkColorScheme);

  static ThemeData _theme(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      actionIconTheme: ActionIconThemeData(
        backButtonIconBuilder: (_) => const Icon(Icons.arrow_back_ios_new),
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      inputDecorationTheme: const InputDecorationTheme(),
    );
  }
}
