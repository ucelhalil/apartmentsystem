import 'package:apartment_system/app_text/firebase/index.dart';
import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

part 'register_form_controller.dart';
part 'register_form_mixin.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key, required this.notifier});

  final AuthNotifier notifier;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> with RegisterFormMixin {
  @override
  Widget build(BuildContext context) {
    return CustomFormView(
      scrollController: scrollController,
      formKey: form.formKey,
      children: [
        // ---------------------
        EmailFormField(controller: form.emailController),
        // ---------------------
        PasswordFormField(controller: form.passwordController),
        // ---------------------
        ConfirmPasswordFormField(controller: form.confirmController),
        // ---------------------
        CustomButton.small(
          onPressed: submit,
          child: WText(
            text: ButtonLangText.of.register,
          ),
        ),
        // ---------------------
        TextButton(
          onPressed: goToLogin,
          child: WText(
            text: ButtonLangText.of.loginText,
            style: const TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
