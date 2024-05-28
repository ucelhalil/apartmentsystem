import 'package:apartment_system/index.dart';

enum LangButton {
  buttonSave,
  buttonCancel,
  buttonDelete,
  buttonEdit,
  buttonAdd,
  buttonSend,
  goToLogin,
  goToRegister,
  goToForgot,
  registerText,
  loginText,
  forgotText,
  ;

  String get text => AppLang.button[name]?[langNotifier.value.name] ?? '';
}
