part of 'auth_view.dart';

mixin _AuthViewMixin on State<AuthView> {
  late AuthNotifier authNotifier;

  @override
  void initState() {
    super.initState();
    authNotifier = AuthNotifier();
  }

  @override
  void dispose() {
    authNotifier.dispose();
    super.dispose();
  }
}
