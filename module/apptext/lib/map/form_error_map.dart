import 'package:apptext/apptext.dart';

final class FormErrorTextLang extends ITextLang {
  const FormErrorTextLang();

  String get required => get('required');
  String get invalid => get('invalid');
  String get isPositive => get('is-positive');
  String get isNegative => get('is-negative');
  String get isDateTime => get('is-datetime');
  String get isNumber => get('is-number');
  String get formValidation => get('form-validation');
  String get emailValidation => get('email-validation');
  String get passwordValidation => get('password-validation');
  String get passwordMismatch => get('password-mismatch');
  String get sendedEmail => get('sended-email');
  String get sendedEmailFail => get('sended-email-fail');
  String get emailVerified => get('email-verified');
  String get emailVerifiedFail => get('email-verified-fail');

  @override
  LangTypeDef get map => {
        'required': {
          LangType.en.name: 'This field is required',
          LangType.tr.name: 'Bu alan zorunludur',
        },
        'invalid': {
          LangType.en.name: 'Invalid value',
          LangType.tr.name: 'Geçersiz değer',
        },
        'email-validation': {
          LangType.en.name: 'Please enter a valid email address',
          LangType.tr.name: 'Lütfen geçerli bir e-posta adresi girin',
        },
        'password-validation': {
          LangType.en.name: 'Password must be at least 6 characters',
          LangType.tr.name: 'Şifre en az 6 karakter olmalıdır',
        },
        'password-mismatch': {
          LangType.en.name: 'Passwords do not match',
          LangType.tr.name: 'Şifreler eşleşmiyor',
        },
        'is-positive': {
          LangType.en.name: 'This field must be positive',
          LangType.tr.name: 'Bu alan pozitif olmalıdır',
        },
        'is-negative': {
          LangType.en.name: 'This field must be negative',
          LangType.tr.name: 'Bu alan negatif olmalıdır',
        },
        'is-datetime': {
          LangType.en.name: 'This field must be a valid date',
          LangType.tr.name: 'Bu alan geçerli bir tarih olmalıdır',
        },
        'is-number': {
          LangType.en.name: 'This field must be a valid number',
          LangType.tr.name: 'Bu alan geçerli bir sayı olmalıdır',
        },
        'form-validation': {
          LangType.en.name: 'Form validation failed',
          LangType.tr.name: 'Form doğrulaması başarısız oldu',
        },
        'sended-email': {
          LangType.en.name: 'Email has been sent',
          LangType.tr.name: 'E-posta gönderildi',
        },
        'sended-email-fail': {
          LangType.en.name: 'Email could not be sent',
          LangType.tr.name: 'E-posta gönderilemedi',
        },
        'email-verified': {
          LangType.en.name: 'Email has been verified',
          LangType.tr.name: 'E-posta doğrulandı',
        },
        'email-verified-fail': {
          LangType.en.name: 'Email could not be verified',
          LangType.tr.name: 'E-posta doğrulanamadı',
        },
      };
}
