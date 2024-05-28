part of 'register_form.dart';

mixin RegisterFormMixin on State<RegisterForm> {
  late ScrollController scrollController;
  late RegisterFormController form;
  AuthRegister fireRegister = AuthRegister.of;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    form = RegisterFormController();
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
    if (!confirmPassword()) {
      return context.customShowDialog(
        dialog: CustomDialog(
          child: MyDialog.error(
            message: const FormErrorTextLang().passwordMismatch,
          ).build(),
        ),
      );
    }
    // ---------------------
    final String email = form.emailController.text;
    final String password = form.passwordController.text;
    // ---------------------
    final response = await fireRegister.createUserWithEmailAndPassword(
      email,
      password,
    );
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

    if (response.user!.emailVerified == false) {
      // ignore: use_build_context_synchronously
      // await response.user!.sendEmailVerification();
      return goToEmailVerified();
    }
    // ---------------------
    goToHome();
  }

  void goToLogin() => widget.notifier.toSignIn();

  void goToHome() => context.pushNamed(MyRoute.home.name);

  void goToEmailVerified() => context.pushNamed(MyRoute.emailNotVerified.name);

  bool confirmPassword() {
    if (form.passwordController.text != form.confirmController.text) {
      return false;
    }
    return true;
  }
}
