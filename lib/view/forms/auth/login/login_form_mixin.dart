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
      return errorDialog(const FormErrorTextLang().formValidation);
    }
    //
    AuthUserData? response;
    //
    try {
      response = await fireLogin.signInWithEmailAndPassword(
        form.emailController.text,
        form.passwordController.text,
      );
    } catch (e) {
      return errorDialog(e.toString());
    }
    if (!context.mounted) return;
    //
    if (response.hasEror || response.user == null) {
      // ignore: use_build_context_synchronously
      return errorDialog(response.message ?? '');
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

  Future<T> errorDialog<T>(String code) async {
    return await context.customShowDialog(
      dialog: CustomDialog(
        child: MyDialog.error(
          message: 'Beklenmeyen bir hata oluştu. : $code',
        ).build(),
      ),
    );
  }
}
