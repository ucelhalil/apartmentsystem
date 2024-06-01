import 'package:firebase/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class FireUser extends IFirebaseAuth {
  static FireUser get of => FireUser._();
  FireUser._();

  User? get currentUser => auth.currentUser;
  Stream<User?> get stream => auth.authStateChanges();
  bool get isValidEmail => currentUser?.emailVerified ?? false;

  Future<void> sendVerification() async {
    if(!isValidEmail) {
      try {
        await currentUser?.sendEmailVerification();  
      }  catch (e) {
        throw FireAuthExceptionCode(e.toString()).message;
      }
    }
  }

  Future<void> signOut() async{
    if(currentUser != null) {
      try {
        await auth.signOut();
      }  catch (e) {
        throw FireAuthExceptionCode(e.toString()).message;
      }
    }
  }

  
}