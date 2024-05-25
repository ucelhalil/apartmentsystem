import 'package:apartment_system/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

abstract class MyCloudFirestore<T> {
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get _authCollection =>
      firestore.collection('AuthUser');

  DocumentReference<Map<String, dynamic>> get authUserPath {
    if (AuthUser.of.currentUser == null) {
      if (kDebugMode) debugPrint('MyCloudFirestore User is null');
      throw FirestoreException('not-find-user', 'This project have not a currentuser for firebase');
    }
    return _authCollection.doc(AuthUser.of.currentUser!.uid);
  }

  CollectionReference<Map<String, dynamic>> get userCollectionPath =>
      authUserPath.collection(T.toString());
}
