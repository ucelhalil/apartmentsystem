import 'package:apartment_system/index.dart';

enum LangForgotForm {
  isNotFormValidate,
  ;

  String get text => AppLang.forgotForm[name]?[langNotifier.value.name] ?? '';
}
