part of 'forgot_form.dart';

mixin ForgotFormMixin on State<ForgotForm> {
  late ScrollController scrollController;
  late ForgotFormController form;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    form = ForgotFormController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    form.dispose();
    super.dispose();
  }

  void submit() async {
    if (!form.isValidate()) {
      return context.customShowDialog(
        dialog: CustomDialog(
          child: MyDialog.error(
            message: const FormErrorTextLang().formValidation,
          ).build(),
        ),
      );
    }
    // ---------------------
    final String email = form.emailController.text;
    // ---------------------
    try {
      await FirebaseAuthManager.of.sendPasswordResetEmail(email);
    } catch (e) {
      if (context.mounted) {
        // ignore: use_build_context_synchronously
        return context.customShowDialog(
          dialog: CustomDialog(
            child: MyDialog.error(message: e.toString()).build(),
          ),
        );
      }
      if(kDebugMode) debugPrint(e.toString());
    }
    // ---------------------
    goToLogin();
  }

  void goToLogin() => widget.notifier.toSignIn();

  void goToRegister() => widget.notifier.toSignUp();
}
