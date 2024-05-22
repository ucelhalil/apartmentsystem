import 'package:codeofland/codeofland.dart';

class Config {
  static Config? _of;
  static Config get of => _of ??= Config._();
  Config._();

  BoolNotifier get themeMode => BoolNotifier(false);
  BoolNotifier get languageMode => BoolNotifier(false);
}
