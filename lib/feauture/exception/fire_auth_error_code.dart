import 'package:apptext/apptext.dart';

class AuthErrorCode {
  String getCode(String code) {
    return FirebaseExceptionLang().code(code);
  }
}
