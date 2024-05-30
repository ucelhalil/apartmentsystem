import 'package:apartment_system/index.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class AuthUser extends MyFirebaseAuth {
  static AuthUser? _of;
  static AuthUser get of => _of ??= AuthUser._();
  AuthUser._();
  //
  User? get currentUser => auth.currentUser;
  //
  Stream<User?> get authStateChanges => auth.authStateChanges();
  //
  bool get isValidEmail => currentUser?.emailVerified ?? false;
  //
  Future<void> sendEmailVerification() async {
    if (!isValidEmail) {
      await currentUser?.sendEmailVerification();
    }
  }

  Future<void> signOut() async {
    await auth.signOut();
  }
}
