import 'package:apartment_system/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

final class AuthLogin extends MyFirebaseAuth {
  static AuthLogin? _of;
  static AuthLogin get of => _of ??= AuthLogin._();
  AuthLogin._();

  Future<AuthUserData> signInWithEmailAndPassword(
      String mail, String pass) async {
    try {
      final UserCredential userCredential =
          await auth.signInWithEmailAndPassword(
        email: mail,
        password: pass,
      );
      return AuthUserData(
        user: userCredential.user,
        message: 'Giriş başarılı.',
        hasEror: false,
      );
    } on FirebaseAuthException catch (e) {
      return AuthErrorCode().getCode(e.code);
    } catch (e) {
      if (kDebugMode) debugPrint(e.toString());
      return AuthUserData.error(message: 'Beklenmeyen bir hata oluştu.');
    }
  }
}
