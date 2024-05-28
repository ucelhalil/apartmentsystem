import 'package:apptext/apptext.dart';

final class ButtonTextLang extends ITextLang {
  const ButtonTextLang();

  String get save => get('save');
  String get cancel => get('cancel');
  String get delete => get('delete');
  String get edit => get('edit');
  String get add => get('add');
  String get send => get('send');
  String get login => get('login');
  String get loginText => get('login-text');
  String get register => get('register');
  String get registerText => get('register-text');
  String get forgot => get('forgot');
  String get forgotText => get('forgot-text');

  @override
  LangTypeDef get map => {
        'save': {
          LangType.en.name: 'Save',
          LangType.tr.name: 'Kaydet',
        },
        'cancel': {
          LangType.en.name: 'Cancel',
          LangType.tr.name: 'İptal',
        },
        'delete': {
          LangType.en.name: 'Delete',
          LangType.tr.name: 'Sil',
        },
        'edit': {
          LangType.en.name: 'Edit',
          LangType.tr.name: 'Düzenle',
        },
        'add': {
          LangType.en.name: 'Add',
          LangType.tr.name: 'Ekle',
        },
        'send': {
          LangType.en.name: 'Send',
          LangType.tr.name: 'Gönder',
        },
        'login': {
          LangType.en.name: 'Login',
          LangType.tr.name: 'Giriş',
        },
        'login-text': {
          LangType.en.name: 'Have an account? Login',
          LangType.tr.name: 'Hesabınız var mı? Giriş yapın',
        },
        'register': {
          LangType.en.name: 'Register',
          LangType.tr.name: 'Kayıt Ol',
        },
        'register-text': {
          LangType.en.name: 'Don\'t have an account? Register',
          LangType.tr.name: 'Hesabınız yok mu? Kayıt olun',
        },
        'forgot': {
          LangType.en.name: 'Forgot Password',
          LangType.tr.name: 'Şifremi Unuttum',
        },
        'forgot-text': {
          LangType.en.name: 'Forgot your password? Reset',
          LangType.tr.name: 'Şifrenizi mi unuttunuz? Sıfırlayın',
        },
      };
}
