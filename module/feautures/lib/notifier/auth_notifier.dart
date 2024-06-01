
import 'package:feautures/feautures.dart';
import 'package:flutter/material.dart';

final class AuthNotifier extends ValueNotifier<AuthType> {
  AuthNotifier() : super(AuthType.signin);

  AuthType get authType => value;

  void toSignUp() {
    value = AuthType.signup;
    notifyListeners();
  }

  void toSignIn() {
    value = AuthType.signin;
    notifyListeners();
  }

  void toForgot() {
    value = AuthType.forgot;
    notifyListeners();
  }

  void toVerified() {
    value = AuthType.verified;
    notifyListeners();
  }
}
