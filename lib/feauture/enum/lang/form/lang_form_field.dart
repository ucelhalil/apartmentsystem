import 'package:apartment_system/index.dart';

enum LangFormField {
  emailLabel,
  emailHint,
  passwordLabel,
  passwordHint,
  confirmPasswordLabel,
  confirmPasswordHint,
  nameLabel,
  nameHint,
  phoneLabel,
  phoneHint,
  ;

  String get text => AppLang.formField[name]?[langNotifier.value.name] ?? '';
}
