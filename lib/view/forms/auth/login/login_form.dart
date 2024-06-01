import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';

part 'login_form_controller.dart';
part 'login_form_mixin.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.notifier});

  final AuthNotifier notifier;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with _LoginFormMixin {
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
        [
          CustomButton.small(
            onPressed: submit,
            child: WText(
              text: const ButtonTextLang().login,
            ),
          ),
          // ---------------------
          TextButton(
            onPressed: goToForgot,
            child: WText(
              text: const ButtonTextLang().forgot,
              style: const TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ].spaceAroundRow,
        // ---------------------

        TextButton(
          onPressed: goToRegister,
          child: WText(
            text: const ButtonTextLang().registerText,
            style: const TextStyle(decoration: TextDecoration.underline),
          ),
        ),
        // ---------------------
      ],
    );
  }
}
