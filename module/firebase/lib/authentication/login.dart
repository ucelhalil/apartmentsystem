import 'package:firebase/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';

final class FireUserLogin extends IFirebaseAuth {
  static FireUserLogin get of => FireUserLogin._();
  FireUserLogin._();

  Future<void> signInWithEmail(String email, String password) async{
      if(!email.isEmail())  throw FireAuthException.invalidEmail();
      if(!password.isPassword()) throw FireAuthException.invalidPassword();
      if(auth.currentUser != null) throw FireAuthException.userNotSignedIn();
      // --
      try {
        await auth.signInWithEmailAndPassword(email: email, password: password);
      } on FirebaseAuthException catch (e) {
        throw FireAuthExceptionCode (e.code).message;
      }catch (e) {
        throw FireAuthExceptionCode.unknown;
      } 
  }
}