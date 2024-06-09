import 'package:firebase_auth/firebase_auth.dart';

abstract class IBaseFirebaseAuth {
  String get customerUser => 'CustomerUser';
  //
  FirebaseAuth get auth => FirebaseAuth.instance;
  User? get user => auth.currentUser;
  String? get userId => auth.currentUser?.uid;
  //
  Stream<User?> get stream => auth.authStateChanges();
  //
  bool get isValidEmail => user?.emailVerified ?? false;
}
