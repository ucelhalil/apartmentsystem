part of 'email_verified.dart';

mixin EmailVericationMixin on State<EmailNotVerifiedView> {
  ValueNotifier<FutureType> isSended = ValueNotifier(FutureType.loading);

  @override
  void initState() {
    super.initState();
    sendVerification();
  }

  Future<void> sendVerification() async {
    try {
      await AuthUser.of.sendEmailVerification();
      isSended.value = FutureType.success;
    } catch (e) {
      isSended.value = FutureType.error;
    }
  }

}