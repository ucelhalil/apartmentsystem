// import 'package:apptext/apptext.dart';

// final class TRLanguage extends ILanguage {
//   const TRLanguage();
//   @override
//   AppLanguage get app => AppLanguage(title: 'Apartmant Yönetimi');

//   @override
//   DrawerTextSection get drawer => DrawerTextSection(
//         home: 'Ana Sayfa',
//         settings: 'Ayarlar',
//         profile: 'Profil',
//         logout: 'Çıkış Yap',
//         module: 'Modül',
//         apartment: 'Apartman',
//         report: 'Rapor',
//       );

//   @override
//   AuthExceptionText get authException => AuthExceptionText(
//         invalidEmail: 'invalid-email',
//         invalidEmailMessage: 'Geçersiz e-posta adresi.',
//         missingAndroidPKG: 'missing-android-pkg-name',
//         missingAndroidPKGMessage: 'Bir Android Paket Adı sağlanmalıdır.',
//         missingContinueURI: 'missing-continue-uri',
//         missingContinueURIMessage: 'Devam URL\'si sağlanmalıdır.',
//         missingIOSBundleID: 'missing-ios-bundle-id',
//         missingIOSBundleIDMessage: 'Bir iOS Bundle ID sağlanmalıdır.',
//         invalidContinueURI: 'invalid-continue-uri',
//         invalidContinueURIMessage: 'Devam URL\'si geçersiz.',
//         unAutherizedContinueURI: 'unauthorized-continue-uri',
//         unAutherizedContinueURIMessage: 'Devam URL\'si yetkilendirilmemiş.',
//         userNotFound: 'user-not-found',
//         userNotFoundMessage: 'Bu kimliğe karşılık gelen kullanıcı kaydı yok.',
//         userDisabled: 'user-disabled',
//         userDisabledMessage:
//             'Kullanıcı hesabı bir yönetici tarafından devre dışı bırakıldı.',
//         wrongPassword: 'wrong-password',
//         wrongPasswordMessage: 'Şifre geçersiz veya kullanıcının şifresi yok.',
//         userMissmatch: 'user-mismatch',
//         userMissmatchMessage:
//             'Sağlanan kimlik bilgileri önceki oturum açan kullanıcıya karşılık gelmiyor.',
//         invalidCredential: 'invalid-credential',
//         invalidCredentialMessage:
//             'Sağlanan kimlik bilgisi hatalı veya süresi dolmuş.',
//         invalidVerificationCode: 'invalid-verification-code',
//         invalidVerificationCodeMessage:
//             'Telefon kimlik doğrulama kimliği oluşturmak için kullanılan SMS doğrulama kodu geçersiz.',
//         invalidVerificationID: 'invalid-verification-id',
//         invalidVerificationIDMessage:
//             'Telefon kimlik doğrulama kimliği oluşturmak için kullanılan doğrulama kimliği geçersiz.',
//         invalidPhoneNumber: 'invalid-phone-number',
//         invalidPhoneNumberMessage: 'Geçersiz telefon numarası.',
//         weakPassword: 'weak-password',
//         weakPasswordMessage: 'Şifre zayıf.',
//         emailAlreadyInUse: 'email-already-in-use',
//         emailAlreadyInUseMessage: 'E-posta adresi zaten kullanımda.',
//       );

//   @override
//   AuthFormErrorText get authFormError => AuthFormErrorText(
//         emptyField: 'Bu alan boş bırakılamaz',
//         invalidEmail: 'Geçersiz e-posta adresi',
//         invalidPassword: 'Geçersiz şifre',
//         invalidPhoneNumber: 'Geçersiz telefon numarası',
//         invalidName: 'Geçersiz isim',
//         invalidSurname: 'Geçersiz soyisim',
//         invalidDate: 'Geçersiz tarih',
//         invalidConfirmPassword: 'Şifreler eşleşmiyor',
//         invalidPositiveNumber: 'Pozitif bir sayı giriniz',
//       );

//   @override
//   AuthEmailVerificationText get authEmailVerification =>
//       AuthEmailVerificationText(
//         emailNotVerified: 'E-postanız doğrulanmadı',
//         emailNotVerifiedMessage: 'Lütfen önce e-postanızı doğrulayın',
//         emailVerified: 'E-postanız doğrulandı',
//         emailVerifiedMessage: 'E-postanız doğrulandı',
//         sendedEmailVerified: 'E-postanıza doğrulama bağlantısı gönderildi',
//         sendedFailedEmailVerified:
//             'Tekrar deneyin! E-postanıza doğrulama bağlantısı gönderilmedi',
//       );

//   @override
//   TBLApartmentFormText get apartmentForm => TBLApartmentFormText(
//         labelName: 'Apartman Adı',
//         hintName: 'Apartman Adı Giriniz',
//         labelAddress: 'Apartman Adresi',
//         hintAddress: 'Apartman Adresi Giriniz',
//         labelFloor: 'Apartman Kat Sayısı',
//         hintFloor: 'Apartman Kat Sayısı Giriniz',
//         labelFlats: 'Apartman Daire Sayısı',
//         hintFlats: 'Apartman Daire Sayısı Giriniz',
//         labelBuild: 'Apartman Yapım Tarihi',
//         hintBuild: 'Apartman Yapım Tarihi Giriniz',
//         labelElevator: 'Asansör Var mı?',
//         hintElevator: 'Asansör Durumunu Seçiniz',
//         labelDate: 'Apartman Yapım Tarihi',
//         hintDate: 'Apartman Yapım Tarihi Seçiniz',
//       );

//   @override
//   AppButtonText get button => AppButtonText(
//         login: 'Giriş Yap',
//         register: 'Kayıt Ol',
//         send: 'Gönder',
//         save: 'Kaydet',
//         forgot: 'Şifremi Unuttum',
//         registerText: 'Hesabınız yok mu? Kayıt Olun',
//         loginText: 'Zaten hesabınız var mı? Giriş Yapın',
//         goToLogin: 'Giriş Yap',
//         goToRegister: 'Kayıt Ol',
//       );
// }
