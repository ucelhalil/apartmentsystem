import 'package:flutter/material.dart';

final class ThemeManager extends InheritedNotifier {
  const ThemeManager({
    super.key,
    required super.child,
  });

  static ThemeManager? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeManager>();
  }

  static ThemeManager of(BuildContext context) {
    final value = maybeOf(context);
    assert(value != null, 'No ThemeManager found in context');
    return value!;
  }
}

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData = ThemeData();

  ThemeData get themeData => _themeData;

  void change(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toLigth() {
    _themeData = ThemeData.light();
    notifyListeners();
  }

  void toDark() {
    _themeData = ThemeData.dark();
    notifyListeners();
  }
}
