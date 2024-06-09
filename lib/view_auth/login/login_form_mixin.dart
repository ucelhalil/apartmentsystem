part of 'login_form.dart';

mixin _LoginFormMixin on State<LoginForm> {
  late ScrollController scrollController;
  late LoginFormController form;

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

  // ---------------------
  // ---------------------
  // ---------------------
  // ---------------------

  void submit() async {
    if (!form.isValidate()) {
      return errorDialog(const FormErrorTextLang().formValidation);
    }
    //
    try {
      await FirebaseAuthManager.of.signInWithEmailAndPassword(
        form.emailController.text,
        form.passwordController.text,
      );
      // ---------------------
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      return errorDialog(FirebaseAuthLang().get(e.toString()));
    }
    if (FirestoreUser.of.user?.emailVerified ?? false) {
      return goToDashboard();
    }
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

  Future<T> errorDialog<T>(String code) async {
    return await context.customShowDialog(
      dialog: CustomDialog(
        child: MyDialog.error(message: code).build(),
      ),
    );
  }
}
