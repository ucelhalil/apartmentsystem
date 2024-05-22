import 'package:apartment_system/index.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class AuthForgot extends MyFirebaseAuth {
  static AuthForgot? _of;
  static AuthForgot get of => _of ??= AuthForgot._();
  AuthForgot._();

  Future<AuthUserData> sendPasswordResetEmail(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
      return AuthUserData(
        user: null,
        message: 'Password reset for email sent',
        hasEror: false,
      );
    } on FirebaseAuthException catch (e) {
      return AuthErrorCode().getCode(e.code);
    } catch (e) {
      return AuthUserData(
        user: null,
        message: 'An error occurred',
        hasEror: true,
      );
    }
  }
}
