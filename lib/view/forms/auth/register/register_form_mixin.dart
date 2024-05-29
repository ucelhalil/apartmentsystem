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
      return errorDialog(const FormErrorTextLang().formValidation);
    }
    // ---------------------
    if (!confirmPassword()) {
      return errorDialog(const FormErrorTextLang().passwordMismatch);
    }
    // ---------------------
    AuthUserData? response;
    // ---------------------
    try {
      response = await fireRegister.createUserWithEmailAndPassword(
        form.emailController.text,
        form.passwordController.text,
      );
    } catch (e) {
      return errorDialog(e.toString());
    }

    // ---------------------
    if (!context.mounted) return;
    // ---------------------
    if (response.hasEror || response.user == null) {
      return errorDialog(response.message ?? '');
    }

    if (response.user!.emailVerified == false) {
      return goToEmailVerified();
    }
    // ---------------------
    goToLogin();
  }

  void goToLogin() => widget.notifier.toSignIn();

  void goToHome() => context.pushNamed(MyRoute.home.name);

  void goToEmailVerified() => widget.notifier.toVerified();

  bool confirmPassword() {
    if (form.passwordController.text != form.confirmController.text) {
      return false;
    }
    return true;
  }

  Future<T> errorDialog<T>(String code) async {
    return await context.customShowDialog(
      dialog: CustomDialog(
        child: MyDialog.error(
          message: code,
        ).build(),
      ),
    );
  }
}
