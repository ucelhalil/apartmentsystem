import 'package:apartment_system/index.dart';
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
      await FirestoreUser.of.create(userCredential);
      // ---------------------
      return AuthUserData(
        user: userCredential.user,
        message: 'Kayıt başarılı.',
        hasEror: false,
      );
    } on FirebaseAuthException catch (e) {
      return AuthUserData.error(
        message:
            AppLang.firebaseException[e.code]?[langNotifier.value.name] ?? '',
      );
    } catch (e) {
      if (kDebugMode) debugPrint(e.toString());
      return AuthUserData(
        user: null,
        message: 'Beklenmeyen bir hata oluştu.',
        hasEror: true,
      );
    }
  }
}
