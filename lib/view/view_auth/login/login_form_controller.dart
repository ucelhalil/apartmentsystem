part of 'login_form.dart';

class LoginFormController {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final GlobalKey<FormState> formKey;

  void init() {
    if (kDebugMode) {
      _emailController = TextEditingController(text: defaultEmail);
      _passwordController = TextEditingController(text: defaultPassword);
    } else {
      _emailController = TextEditingController();
      _passwordController = TextEditingController();
    }
    formKey = GlobalKey<FormState>();
  }

  bool isValidate() {
    if (formKey.currentState == null) return false;
    return formKey.currentState!.validate();
  }

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  String get emailValue => _emailController.text;
  String get passwordValue => _passwordController.text;

  void setEmail(String value) => _emailController.text = value;
  void setPassword(String value) => _passwordController.text = value;

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }
}
