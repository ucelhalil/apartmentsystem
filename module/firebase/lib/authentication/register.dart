import 'package:firebase/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class FireUserRegister extends IFirebaseAuth {
  static FireUserRegister get of => FireUserRegister._();
  FireUserRegister._();

  Future<UserCredential> createWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    if (!email.isEmail()) throw FireAuthException.invalidEmail().code;
    if (!password.isPassword()) throw FireAuthException.invalidPassword().code;
    // ------
    try {
      return await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw FireAuthExceptionCode(e.code).code;
    } catch (e) {
      throw FireAuthExceptionCode.unknown;
    }
  }
}
