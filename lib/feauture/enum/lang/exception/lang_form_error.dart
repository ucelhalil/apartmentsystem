import 'package:apartment_system/index.dart';

enum LangFormError {
  required,
  email,
  minLength,
  maxLength,
  passwordNotMatch,
  isNotPositiveNumber,
  isNotNumber,
  isNotDate,
  emptyField,
  isNotValidEmail,
  isNotValidPassword,
  isNotConfirmPassword,
  isNotValidDate,
  isNotFormValidate,
  ;

  String get text => AppLang.formError[name]?[langNotifier.value.name] ?? '';
}
