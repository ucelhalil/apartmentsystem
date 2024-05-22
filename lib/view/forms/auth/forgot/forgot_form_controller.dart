part of 'forgot_form.dart';

class ForgotFormController {
  final TextEditingController _emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void dispose() {
    _emailController.dispose();
  }

  bool isValidate() {
    if (formKey.currentState == null) return false;
    return formKey.currentState!.validate();
  }

  TextEditingController get emailController => _emailController;

  void setEmail(String value) => _emailController.text = value;

  String get emailValue => _emailController.text;
}
