part of 'login_form.dart';

mixin _LoginFormMixin on State<LoginForm> {
  late ScrollController scrollController;
  late LoginFormController form;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    form = LoginFormController();
    form.init();
  }

  @override
  void dispose() {
    scrollController.dispose();
    form.dispose();
    super.dispose();
  }

  // ---------------------
  // ---------------------
  // ---------------------
  // ---------------------

  void submit() async {
    if (!form.isValidate()) {
      return MyDialog.error(
        context,
        message: FormLangText.of.formNotValid,
      ).build();
    }
    //

    await FirebaseAuthManager.of.signInWithEmailAndPassword(
      form.emailController.text,
      form.passwordController.text,
    );

    if (FirestoreUser.of.user?.emailVerified ?? false) {
      return goToDashboard();
    }
    //
    return goToEmailVerified();
  }

  // ---------------------
  // ---------------------
  // ---------------------
  // ---------------------

  void goToDashboard() => context.pushNamed(MyRoute.dashboard.name);

  void goToEmailVerified() => widget.notifier.toVerified();

  void goToForgot() => widget.notifier.toForgot();

  void goToRegister() => widget.notifier.toSignUp();
}
