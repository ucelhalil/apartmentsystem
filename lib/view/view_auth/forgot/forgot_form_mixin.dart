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
      return MyDialog.error(
        context,
        message: FormLangText.of.formNotValid,
      ).build();
    }
    // ---------------------
    final String email = form.emailController.text;
    // ---------------------
    try {
      await FirebaseAuthManager.of.sendPasswordResetEmail(email);
    } catch (e) {
      if (!context.mounted) return;
      return MyDialog.error(
        // ignore: use_build_context_synchronously
        context,
        message: FormLangText.of.sendEmailFailed,
      ).build();
    }
    // ---------------------
    goToLogin();
  }

  void goToLogin() => widget.notifier.toSignIn();

  void goToRegister() => widget.notifier.toSignUp();
}
