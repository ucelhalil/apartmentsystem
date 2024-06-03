import 'package:apptext/apptext.dart';

final class FirebaseAuthLang extends ITextLang {
  @override
  LangTypeDef get map => {
        'permission-denied': {
          LangType.tr.name: 'İzin reddedildi.',
          LangType.en.name: 'Permission denied.',
        },
        'unknown-error': {
          LangType.tr.name: 'Bilinmeyen hata.',
          LangType.en.name: 'Unknown error.',
        },
        'invalid-email': {
          LangType.tr.name: 'Geçersiz e-posta adresi.',
          LangType.en.name: 'Invalid email address.',
        },
        'invalid-credential': {
          LangType.tr.name: 'Geçersiz kimlik bilgisi.',
          LangType.en.name: 'Invalid credential.',
        },
        'invalid-verification-code': {
          LangType.tr.name: 'Geçersiz doğrulama kodu.',
          LangType.en.name: 'Invalid verification code.',
        },
        'missing-android-pkg-name': {
          LangType.tr.name:
              'Bir Android paket adı sağlanmalıdır eğer Android uygulamasının yüklenmesi gerekiyorsa.',
          LangType.en.name:
              'An Android package name must be provided if the Android app is required to be installed.',
        },
        'missing-continue-uri': {
          LangType.tr.name: 'Devam URI\'si eksik.',
          LangType.en.name: 'Missing continue URI.',
        },
        'missing-ios-bundle-id': {
          LangType.tr.name:
              'Bir iOS paket adı sağlanmalıdır eğer iOS uygulamasının yüklenmesi gerekiyorsa.',
          LangType.en.name:
              'An iOS bundle ID must be provided if the iOS app is required to be installed.',
        },
        'invalid-continue-uri': {
          LangType.tr.name: 'Geçersiz devam URI\'si.',
          LangType.en.name: 'Invalid continue URI.',
        },
        'unauthorized-continue-uri': {
          LangType.tr.name: 'Yetkisiz devam URI\'si.',
          LangType.en.name: 'Unauthorized continue URI.',
        },
        'user-not-found': {
          LangType.tr.name: 'Kullanıcı bulunamadı.',
          LangType.en.name: 'User not found.',
        },
        'user-disabled': {
          LangType.tr.name: 'Kullanıcı devre dışı bırakıldı.',
          LangType.en.name: 'User disabled.',
        },
        'wrong-password': {
          LangType.tr.name: 'Yanlış şifre.',
          LangType.en.name: 'Wrong password.',
        },
        'email-already-in-use': {
          LangType.tr.name: 'E-posta adresi zaten kullanımda.',
          LangType.en.name: 'Email already in use.',
        },
        'operation-not-allowed': {
          LangType.tr.name: 'İşlem izin verilmedi.',
          LangType.en.name: 'Operation not allowed.',
        },
        'weak-password': {
          LangType.tr.name: 'Zayıf şifre.',
          LangType.en.name: 'Weak password.',
        },
      };
}
