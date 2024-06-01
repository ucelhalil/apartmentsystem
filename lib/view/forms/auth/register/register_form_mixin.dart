part of 'register_form.dart';

mixin RegisterFormMixin on State<RegisterForm> {
  late ScrollController scrollController;
  late RegisterFormController form;
  FireUserRegister fireRegister = FireUserRegister.of;

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
    try {
      await fireRegister.createWithEmailAndPassword(
        email:form.emailController.text,
        password:form.passwordController.text,
      );
    } catch (e) {
      return errorDialog(e.toString());
    }
    // ---------------------
    if (FireUser.of.currentUser?.emailVerified == false) {
      return goToEmailVerified();
    }
    // ---------------------
    return goToLogin();
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
