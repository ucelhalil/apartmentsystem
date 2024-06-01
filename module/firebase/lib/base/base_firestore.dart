import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/foundation.dart';

abstract class ICloudFirestore<T> extends IFirebaseUser {
  
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get _authCollection =>
      firestore.collection('CustomerUser');

  DocumentReference<Map<String, dynamic>> get authUserPath {
    if (user == null) {
      if (kDebugMode) debugPrint('MyCloudFirestore User is null');
      throw FirestoreException(
          'not-find-user',
          'This project have not a currentuser for firebase',
          );
    }
    return _authCollection.doc(user!.uid);
  }

  CollectionReference<Map<String, dynamic>> get collectionPathWithT =>
      authUserPath.collection(T.toString());
}
