part of 'login_form.dart';

mixin _LoginFormMixin on State<LoginForm> {
  late ScrollController scrollController;
  late LoginFormController form;
  FireUserLogin fireLogin = FireUserLogin.of;

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
      final response = await fireLogin.signInWithEmail(
        form.emailController.text,
        form.passwordController.text,
      );
      // ---------------------
      final responseUser = await FirestoreUser().getUser();
      // ---------------------
      if (responseUser.data() == null || responseUser.data()!.isEmpty) {
        TBLUser user = TBLUser(
          uid: response.user?.uid,
          email: response.user?.email,
          createdDate: DateTime.now(),
          planDate: DateTime.now().add(const Duration(days: 365)),
        );
        //
        await FirestoreUser().createUserDoc(user.toJson());
      }
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      return errorDialog(FirebaseAuthLang().get(e.toString()));
    }
    if (FireUser.of.currentUser?.emailVerified ?? false) {
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
