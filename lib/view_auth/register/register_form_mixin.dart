part of 'register_form.dart';

mixin RegisterFormMixin on State<RegisterForm> {
  late ScrollController scrollController;
  late RegisterFormController form;

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
      final response = await FirebaseAuthManager.of.createUserWithEmailAndPassword(
        form.emailController.text,
        form.passwordController.text,
      );

      if (response.user == null) throw CustomFirebaseAuthException('not-register-user');
      //
      TBLUser user = TBLUser(
        uid: response.user?.uid,
        email: response.user?.email,
        createdDate: DateTime.now(),
        planDate: DateTime.now().add(const Duration(days: 365)),
        isActive: true,
        isDeleted: false,
        language: true,
        theme: true,
        createdBy: response.user?.email,
      );
      //
      final responseData = await FirestoreUser.of.createData(user);
      //
      if (responseData == null) throw CustomFirestoreException('user-data-not-create');
      //
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      return errorDialog(FirebaseAuthLang().get(e.toString()));
    }
    // ---------------------
    if (FirestoreUser.of.user?.emailVerified == false) {
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
