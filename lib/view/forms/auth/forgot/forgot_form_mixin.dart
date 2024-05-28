part of 'forgot_form.dart';

mixin ForgotFormMixin on State<ForgotForm> {
  late ScrollController scrollController;
  late ForgotFormController form;
  AuthForgot fireForgot = AuthForgot.of;

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
            message: LangForgotForm.isNotFormValidate.text,
          ).build(),
        ),
      );
    }
    // ---------------------
    final String email = form.emailController.text;
    // ---------------------
    final response = await fireForgot.sendPasswordResetEmail(email);
    // ---------------------
    if (!context.mounted) return;
    // ---------------------
    if (response.hasEror || response.user == null) {
      // ignore: use_build_context_synchronously
      return context.customShowDialog(
        dialog: CustomDialog(
          child: MyDialog.error(message: response.message ?? '').build(),
        ),
      );
    }
    // ---------------------
    goToLogin();
  }

  void goToLogin() => widget.notifier.toSignIn();

  void goToRegister() => widget.notifier.toSignUp();
}
