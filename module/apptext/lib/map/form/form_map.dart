import 'package:apptext/apptext.dart';

final class FormTextLang extends ITextLang {
  const FormTextLang();
  String get email => get('email');
  String get emailHint => get('email-hint');
  String get password => get('password');
  String get passwordHint => get('password-hint');
  String get confirm => get('confirm');
  String get confirmHint => get('confirm-hint');
  @override
  LangTypeDef get map => {
        'email': {
          LangType.en.name: 'Email Address',
          LangType.tr.name: 'E-posta Adresi',
        },
        'email-hint': {
          LangType.en.name: 'Please enter your email address',
          LangType.tr.name: 'Lütfen e-posta adresinizi girin',
        },
        'password': {
          LangType.en.name: 'Password',
          LangType.tr.name: 'Şifre',
        },
        'password-hint': {
          LangType.en.name: 'Please enter your password',
          LangType.tr.name: 'Lütfen şifrenizi girin',
        },
        'confirm': {
          LangType.en.name: 'Confirm Password',
          LangType.tr.name: 'Şifreyi Onayla',
        },
        'confirm-hint': {
          LangType.en.name: 'Please confirm your password',
          LangType.tr.name: 'Lütfen şifrenizi onaylayın',
        },
        'name': {
          LangType.en.name: 'Name',
          LangType.tr.name: 'Ad',
        },
        'surname': {
          LangType.en.name: 'Surname',
          LangType.tr.name: 'Soyad',
        },
        'phone': {
          LangType.en.name: 'Phone',
          LangType.tr.name: 'Telefon',
        },
        'address': {
          LangType.en.name: 'Address',
          LangType.tr.name: 'Adres',
        },
        'city': {
          LangType.en.name: 'City',
          LangType.tr.name: 'Şehir',
        },
        'country': {
          LangType.en.name: 'Country',
          LangType.tr.name: 'Ülke',
        },
      };
}
