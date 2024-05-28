import 'package:apartment_system/index.dart';

class AuthErrorCode {
  String getCode(String code) {
    return AppLang.firebaseException[code]?[langNotifier.value.name] ?? '';
  }
}
