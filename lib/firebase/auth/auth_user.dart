import 'package:apartment_system/index.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class AuthUser extends MyFirebaseAuth {
  static AuthUser? _of;
  static AuthUser get of => _of ??= AuthUser._();
  AuthUser._();

  User? get currentUser => auth.currentUser;
  late FireUser? _fireUser;
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2773234305.
  FireUser? get fireUser => _fireUser;
  set setFireUser(FireUser value) => _fireUser =value;
  

  Stream<User?> get authStateChanges => auth.authStateChanges();

  bool get isValidEmail => currentUser?.emailVerified ?? false;

  Future<void> sendEmailVerification() async {
    if(!isValidEmail) {
      await currentUser?.sendEmailVerification();
    }
  }

  Future<void> signOut() async {
    _fireUser = null;
    await auth.signOut();
  }

  Future<FireUser> getUserData() async {  
    if (fireUser == null) {
      final response = await FirestoreUser.of.getUser;
      setFireUser = response;
      return response;
    }
    return fireUser!;
  }

  
}
