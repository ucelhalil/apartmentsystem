import 'package:apartment_system/index.dart';

final class ButtonLangText extends IBaseLangText {
  static final ButtonLangText _instance = ButtonLangText._init();
  static ButtonLangText get of => _instance;
  ButtonLangText._init();

  String get submit => text('submit');
  String get save => text('save');
  String get send => text('send');
  String get cancel => text('cancel');
  String get delete => text('delete');
  String get edit => text('edit');
  String get add => text('add');
  String get update => text('update');
  String get close => text('close');
  String get yes => text('yes');
  String get no => text('no');
  String get ok => text('ok');
  String get back => text('back');
  String get next => text('next');
  String get previous => text('previous');
  String get login => text('login');
  String get loginText => text('login-text');
  String get logout => text('logout');
  String get register => text('register');
  String get registerText => text('register-text');
  String get forgotPassword => text('forgotPassword');
  String get resetPassword => text('resetPassword');

  @override
  MapInLanguage get map => {
        'en': {
          'submit': 'Submit',
          'save': 'Save',
          'send': 'Send',
          'cancel': 'Cancel',
          'delete': 'Delete',
          'edit': 'Edit',
          'add': 'Add',
          'update': 'Update',
          'close': 'Close',
          'yes': 'Yes',
          'no': 'No',
          'ok': 'Ok',
          'back': 'Back',
          'next': 'Next',
          'previous': 'Previous',
          'login': 'Login',
          'login-text': 'Do you have an account? Login',
          'logout': 'Logout',
          'register': 'Register',
          'register-text': 'Don\'t have an account? Register',
          'forgotPassword': 'Forgot Password',
          'resetPassword': 'Reset Password',
        },
        'tr': {
          'submit': 'Gönder',
          'save': 'Kaydet',
          'send': 'Gönder',
          'cancel': 'İptal',
          'delete': 'Sil',
          'edit': 'Düzenle',
          'add': 'Ekle',
          'update': 'Güncelle',
          'close': 'Kapat',
          'yes': 'Evet',
          'no': 'Hayır',
          'ok': 'Tamam',
          'back': 'Geri',
          'next': 'İleri',
          'previous': 'Önceki',
          'login': 'Giriş',
          'login-text': 'Hesabınız var mı? Giriş Yapın',
          'logout': 'Çıkış',
          'register': 'Kayıt Ol',
          'register-text': 'Hesabınız yok mu? Kayıt Olun',
          'forgotPassword': 'Şifremi Unuttum',
          'resetPassword': 'Şifre Sıfırla',
        },
      };

  @override
  String text(String code) =>
      map[langNotifier.code]?[code] ?? 'No Text for Code: $code';
}
