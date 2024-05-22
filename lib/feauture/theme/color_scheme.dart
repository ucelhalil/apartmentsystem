import 'package:flutter/material.dart';

final class DarkColorScheme extends ColorScheme {
  const DarkColorScheme({
    super.brightness = Brightness.dark,
    super.primary = const Color(0xFF2192FF),
    super.onPrimary = const Color(0xFFE7E7E7),
    //
    super.secondary = const Color(0xFF38E54D),
    super.onSecondary = const Color(0xFFE7E7E7),
    //
    super.tertiary = const Color(0xFF9CFF2E),
    super.onTertiary = const Color(0xFFE7E7E7),
    //
    super.error = const Color(0xFFC40C0C),
    super.onError = const Color(0xFFE7E7E7),
    //
    super.background = const Color(0xFF000000),
    super.onBackground = const Color(0xFFFAFAFA),
    //
    super.surface = const Color(0xFF1E1E1E),
    super.onSurface = const Color(0xFFFFFFFF),
  });
}

final class LightColorScheme extends ColorScheme {
  const LightColorScheme({
    super.brightness = Brightness.light,
    super.primary = const Color(0xFF2192FF),
    super.onPrimary = const Color(0xFFE7E7E7),
    super.secondary = const Color(0xFF38E54D),
    super.onSecondary = const Color(0xFFE7E7E7),
    super.tertiary = const Color(0xFF9CFF2E),
    super.onTertiary = const Color(0xFFE7E7E7),
    super.error = const Color(0xFFC40C0C),
    super.onError = const Color(0xFFE7E7E7),
    super.background = const Color(0xFFFAFAFA),
    super.onBackground = const Color(0xFF000000),
    super.surface = const Color(0xFFFFFFFF),
    super.onSurface = const Color(0xFF000000),
  });
}
