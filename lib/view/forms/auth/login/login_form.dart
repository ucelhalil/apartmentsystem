import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
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
        // ---------------------
        [
          CustomButton.small(
            onPressed: submit,
            child: const WText(
              text: loginButton,
            ),
          ),
          // ---------------------
          TextButton(
            onPressed: goToForgot,
            child: const WText(
              text: forgotButton,
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ].spaceAroundRow,
        // ---------------------
        // ---------------------

        TextButton(
          onPressed: goToRegister,
          child: const WText(
            text: registerTextButton,
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
