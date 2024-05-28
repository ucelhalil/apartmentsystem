part of 'login_form.dart';

mixin _LoginFormMixin on State<LoginForm> {
  late ScrollController scrollController;
  late LoginFormController form;
  AuthLogin fireLogin = AuthLogin.of;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    form = LoginFormController();
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
      //
    }
    //
    final String email = form.emailController.text;
    final String password = form.passwordController.text;
    //
    final response = await fireLogin.signInWithEmailAndPassword(
      email,
      password,
    );
    //

    if (!context.mounted) return;
    //
    if (response.hasEror || response.user == null) {
      // ignore: use_build_context_synchronously
      return context.customShowDialog(
        dialog: CustomDialog(
          child: MyDialog.error(message: response.message ?? '').build(),
        ),
      );
    }

    if (response.user!.emailVerified == false) {
      // ignore: use_build_context_synchronously
      // await response.user!.sendEmailVerification();
      return goToEmailVerified();
    }

    //
    goToHome();
  }

  void goToHome() => context.pushNamed(MyRoute.home.name);

  void goToEmailVerified() => widget.notifier.toVerified();

  void goToForgot() => widget.notifier.toForgot();

  void goToRegister() => widget.notifier.toSignUp();
}
