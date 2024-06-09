part of 'register_form.dart';

class RegisterFormController {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool isValidate() {
    if (formKey.currentState == null) return false;
    return formKey.currentState!.validate();
  }

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmController => _confirmController;

  String get emailValue => _emailController.text;
  String get passwordValue => _passwordController.text;
  String get confirmValue => _confirmController.text;

  void setEmail(String value) => _emailController.text = value;
  void setPassword(String value) => _passwordController.text = value;
  void setConfirm(String value) => _confirmController.text = value;

  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
  }
}
