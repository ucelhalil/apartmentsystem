import 'package:codeofland/codeofland.dart';
import 'package:flutter/material.dart';

import 'index.dart';

final class LightTheme extends ITheme {
  LightTheme();

  final _scheme = const LightColorScheme();

  @override
  ColorScheme get colorScheme => _scheme;

  AppBarTheme get appBar => AppBarTheme(
        foregroundColor: _scheme.onPrimary,
        color: _scheme.primary,
      );

  @override
  ElevatedButtonThemeData get elevatedButton => ElevatedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(_scheme.primary),
        ),
      );

  @override
  ThemeData get theme => ThemeData.light(useMaterial3: true).copyWith(
        colorScheme: _scheme,
        elevatedButtonTheme: elevatedButton,
        appBarTheme: appBar,
        scaffoldBackgroundColor: _scheme.surface,
        primaryColor: _scheme.primary,
      );
}
