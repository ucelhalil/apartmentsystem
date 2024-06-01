import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuth {
  FirebaseAuth get auth => FirebaseAuth.instance;
}

abstract class IFirebaseUser extends IFirebaseAuth {
  User? get user => auth.currentUser;
}
