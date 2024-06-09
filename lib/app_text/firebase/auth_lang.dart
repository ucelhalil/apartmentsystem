import 'package:apartment_system/index.dart';

final class FireAuthLangText extends IBaseLangText {
  static final FireAuthLangText _instance = FireAuthLangText._init();
  static FireAuthLangText get of => _instance;
  FireAuthLangText._init();

  String get notSendVerifyEmail => text('not-send-verify-email');

  @override
  String text(String code) =>
      map[langNotifier.code]?[code] ?? 'No Text for Code: $code';

  @override
  MapInLanguage get map => {
        'en': {
          'not-send-verify-email': 'Not Send Verification Email',
        },
        'tr': {
          'not-send-verify-email': 'Doğrulama E-postası Gönderilemedi',
        },
      };
}
