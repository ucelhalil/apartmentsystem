import 'package:apartment_system/index.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

part 'forgot_form_controller.dart';
part 'forgot_form_mixin.dart';

class ForgotForm extends StatefulWidget {
  const ForgotForm({super.key, required this.notifier});

  final AuthNotifier notifier;

  @override
  State<ForgotForm> createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> with ForgotFormMixin {
  @override
  Widget build(BuildContext context) {
    return CustomFormView(
      scrollController: scrollController,
      formKey: form.formKey,
      children: [
        // ---------------------
        EmailFormField(controller: form.emailController),
        // ---------------------
        CustomButton.small(
          onPressed: submit,
          child: WText(
            text: LangButton.buttonSend.text,
          ),
        ),
        // ---------------------
        TextButton(
          onPressed: goToLogin,
          child: WText(
            text: LangButton.loginText.text,
            style: const TextStyle(decoration: TextDecoration.underline),
          ),
        ),
        // ---------------------
        TextButton(
          onPressed: goToRegister,
          child: WText(
            text: LangButton.registerText.text,
            style: const TextStyle(decoration: TextDecoration.underline),
          ),
        ),

        // ---------------------
      ],
    );
  }
}
