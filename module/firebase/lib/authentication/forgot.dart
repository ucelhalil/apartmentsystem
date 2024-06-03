import 'package:firebase/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class FireUserForgot extends IFirebaseAuth {
  static FireUserForgot get of => FireUserForgot._();
  FireUserForgot._();

  Future<void> sendPasswordToMail(String email) async {
    if (!email.isEmail()) throw FireAuthException('invalid-email');
    // -
    try {
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw FireAuthExceptionCode(e.code).message;
    } catch (e) {
      throw FireAuthExceptionCode.unknown;
    }
  }
}
