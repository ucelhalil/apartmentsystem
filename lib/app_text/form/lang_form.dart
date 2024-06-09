import 'package:apartment_system/index.dart';

final class FormLangText extends IBaseLangText {
  static final FormLangText _instance = FormLangText._init();
  static FormLangText get of => _instance;
  FormLangText._init();

  String get submit => text('submit');
  String get required => text('required');
  String get formNotValid => text('form-not-valid');
  String get passwordMismatch => text('password-mismatch');
  String get numberIsNegative => text('number-is-negative');
  String get numberIsPositive => text('number-is-positive');
  String get valueMustInt => text('value-must-int');
  String get valueMustDate => text('value-must-date');
  String get emailVerifying => text('email-verifying');
  String get numberIsNotPositive => text('number-is-not-positive');
  String get sendEmailFailed => text('send-email-failed');
  String get sendEmailSuccess => text('send-email-success');
  String get confirm => text('confirm');
  String get confirmHint => text('confirmHint');
  String get passwordValidation => text('password-validation');
  String get email => text('email');
  String get emailHint => text('email-hint');
  String get emailValidation => text('email-validation');
  String get password => text('password');
  String get passwordHint => text('password-hint');

  @override
  String text(String code) =>
      map[langNotifier.code]?[code] ?? 'No Text for Code: $code';

  @override
  MapInLanguage get map => {
        'en': {
          'submit': 'Submit',
          'email': 'Email',
          'email-hint': 'Enter Your Email',
          'password': 'Password',
          'password-hint': 'Enter Your Password',
          'confirmHint': 'Confirm Password',
          'confirm': 'Confirm',
          'email-validation': 'Email is not valid',
          'password-validation':
              'Password is Length 8 or more and contains at least one uppercase letter, one lowercase letter, one number',
          'email-verifying': 'Email Verifying',
          'send-email-failed': 'Send Email Failed',
          'send-email-success': 'Send Email Success',
          'required': 'This Field Required',
          'form-not-valid': 'Form not valid',
          'password-mismatch': 'Password mismatch',
          'number-is-negative': 'Number is negative',
          'number-is-positive': 'Number is positive',
          'number-is-not-positive': 'Number is not positive',
          'value-must-int': 'Value must be integer',
          'value-must-date': 'Value must be date',
        },
        'tr': {
          'submit': 'Gönder',
          'email': 'Email',
          'email-hint': 'Emailinizi Girin',
          'password': 'Şifre',
          'password-hint': 'Şifrenizi Girin',
          'confirmHint': 'Şifreyi Onayla',
          'confirm': 'Onayla',
          'email-validation': 'Email geçerli değil',
          'password-validation':
              'Şifre en az 8 karakter ve en az bir büyük harf, bir küçük harf, bir sayı içermelidir',
          'email-verifying': 'Email Doğrulama',
          'send-email-failed': 'Email Gönderme Başarısız',
          'send-email-success': 'Email Gönderme Başarılı',
          'required': 'Bu Alan Gerekli',
          'form-not-valid': 'Form geçerli değil',
          'password-mismatch': 'Şifre uyuşmuyor',
          'number-is-negative': 'Sayı negatif',
          'number-is-positive': 'Sayı pozitif',
          'number-is-not-positive': 'Sayı pozitif değil',
          'value-must-date': 'Değer tarih olmalı',
          'value-must-int': 'Değer tam sayı olmalı',
        },
      };
}
