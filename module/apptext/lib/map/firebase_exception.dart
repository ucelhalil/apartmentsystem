import 'package:apptext/apptext.dart';

final class FirebaseExceptionLang extends ITextLang {
  String code(String code) => get(code);

  @override
  LangTypeDef get map => {
        'invalid-email': {
          'tr': 'Geçersiz e-posta adresi.',
          'en': 'Invalid email address.',
        },
        'missing-android-pkg-name': {
          'tr': 'Android paket adı eksik.',
          'en': 'Missing Android package name.',
        },
        'missing-continue-uri': {
          'tr': 'Devam URI\'si eksik.',
          'en': 'Missing continue URI.',
        },
        'missing-ios-bundle-id': {
          'tr': 'IOS paket adı eksik.',
          'en': 'Missing IOS bundle ID.',
        },
        'invalid-continue-uri': {
          'tr': 'Geçersiz devam URI\'si.',
          'en': 'Invalid continue URI.',
        },
        'unauthorized-continue-uri': {
          'tr': 'Yetkisiz devam URI\'si.',
          'en': 'Unauthorized continue URI.',
        },
        'user-not-found': {
          'tr': 'Kullanıcı bulunamadı.',
          'en': 'User not found.',
        },
        'user-disabled': {
          'tr': 'Kullanıcı devre dışı bırakıldı.',
          'en': 'User disabled.',
        },
        'wrong-password': {
          'tr': 'Yanlış şifre.',
          'en': 'Wrong password.',
        },
        'user-mismatch': {
          'tr': 'Kullanıcı uyuşmuyor.',
          'en': 'User mismatch.',
        },
        'invalid-credential': {
          'tr': 'Geçersiz kimlik bilgisi.',
          'en': 'Invalid credential.',
        },
        'invalid-verification-code': {
          'tr': 'Geçersiz doğrulama kodu.',
          'en': 'Invalid verification code.',
        },
        'invalid-verification-id': {
          'tr': 'Geçersiz doğrulama kimliği.',
          'en': 'Invalid verification ID.',
        },
        'invalid-phone-number': {
          'tr': 'Geçersiz telefon numarası.',
          'en': 'Invalid phone number.',
        },
        'weak-password': {
          'tr': 'Zayıf şifre.',
          'en': 'Weak password.',
        },
        'email-already-in-use': {
          'tr': 'E-posta adresi zaten kullanımda.',
          'en': 'Email already in use.',
        },
      };
}
