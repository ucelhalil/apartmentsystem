part of 'email_verified.dart';

mixin EmailVericationMixin on State<EmailVerifiedView> {
  ValueNotifier<FutureType> isSended = ValueNotifier(FutureType.loading);

  @override
  void initState() {
    super.initState();
    sendVerification();
  }

  Future<void> sendVerification() async {
    try {
      await FirebaseAuthManager.of.sendEmailVerification();
      isSended.value = FutureType.success;
    } catch (e) {
      isSended.value = FutureType.error;
    }
  }

  goToLogin() => widget.notifier.toSignIn();
}
