import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
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
          child: const WText(
            text: sendButton,
          ),
        ),
        // ---------------------
        TextButton(
          onPressed: goToLogin,
          child: const WText(
            text: loginTextButton,
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
        // ---------------------
        TextButton(
          onPressed: goToRegister,
          child: const WText(
            text: registerTextButton,
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),

        // ---------------------
      ],
    );
  }
}
