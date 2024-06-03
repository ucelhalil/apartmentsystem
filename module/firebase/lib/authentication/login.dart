import 'package:firebase/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

final class FireUserLogin extends IFirebaseAuth {
  static FireUserLogin get of => FireUserLogin._();
  FireUserLogin._();

  Future<UserCredential> signInWithEmail(String email, String password) async {
    try {
      if (!email.isEmail()) throw FireAuthException.invalidEmail();
      if (!password.isPassword()) throw FireAuthException.invalidPassword();
      if (auth.currentUser != null) await auth.signOut();
      //
      //
      final response = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      //
      return response;
      //
    } on FirebaseAuthException catch (e) {
      kDebugMode ? debugPrint(e.code) : null;
      throw FireAuthExceptionCode(e.code).code;
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      throw FireAuthExceptionCode.unknown;
    }
  }
}
