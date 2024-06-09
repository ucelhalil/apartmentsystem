import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class FirebaseAuthManager extends IBaseFirebaseAuth {
  static FirebaseAuthManager get of => FirebaseAuthManager._internal();
  FirebaseAuthManager._internal();

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final response = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return response;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          throw CustomFirebaseAuthException('email-not-valid');
        case 'user-disabled':
          throw CustomFirebaseAuthException('user-disabled');
        case 'user-not-found':
          throw CustomFirebaseAuthException('user-not-found');
        case 'wrong-password':
          throw CustomFirebaseAuthException('wrong-password');
        case 'invalid-credential':
          throw CustomFirebaseAuthException('invalid-credential');
        default:
          throw CustomFirebaseAuthException(e.code);
      }
    } catch (e) {
      throw CustomFirebaseAuthException('not-login-user');
    }
  }

  Future<UserCredential> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      if (!email.isValidEmailRegex) {
        throw CustomFirebaseAuthException('email-not-valid');
      }
      if (password.isValidMediumPassword) {
        throw CustomFirebaseAuthException('password-not-valid');
      }
      // ----
      final response = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      // ----
      if (response.user == null) throw CustomFirebaseAuthException('user-null');
      // ----
      return response;
    } catch (e) {
      throw CustomFirebaseAuthException('user-not-create');
    }
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw CustomFirebaseAuthException(e.code);
    } catch (e) {
      throw CustomFirebaseAuthException('not-send-reset-email');
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      await auth.currentUser!.sendEmailVerification();
    } catch (e) {
      throw CustomFirebaseAuthException('not-send-email-verification');
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      throw CustomFirebaseAuthException('not-sign-out');
    }
  }
}
