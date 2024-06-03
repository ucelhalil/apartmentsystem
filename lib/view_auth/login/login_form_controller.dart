part of 'login_form.dart';

class LoginFormController {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
