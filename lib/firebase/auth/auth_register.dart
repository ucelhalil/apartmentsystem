import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

final class AuthRegister extends MyFirebaseAuth {
  static AuthRegister? _of;
  static AuthRegister get of => _of ??= AuthRegister._();
  AuthRegister._();

  Future<AuthUserData> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential =
          await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // ---------------------
      final createSuccess = await FirestoreUser.of.create(userCredential);
      // ---------------------
      return AuthUserData(
        user: userCredential.user,
        message: 'Kullanıcı Verisi Yaratılamadı',
        hasEror: !createSuccess,
      );
    } on FirebaseAuthException catch (e) {
      return AuthUserData.error(
        message: FirebaseExceptionLang().code(e.code),
      );
    } catch (e) {
      if (kDebugMode) debugPrint(e.toString());
      return AuthUserData.error(message: 'Beklenmeyen bir hata oluştu.');
    }
  }
}
