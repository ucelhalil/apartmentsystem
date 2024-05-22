import 'package:firebase_auth/firebase_auth.dart';

final class AuthUserData {
  final User? user;
  final String? message;
  final bool hasEror;

  AuthUserData({
    required this.user,
    required this.message,
    required this.hasEror,
  });

  AuthUserData.error({
    this.user,
    required this.message,
    this.hasEror = true,
  });

  bool get hasError => hasEror;
}
