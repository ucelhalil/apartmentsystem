import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/foundation.dart';

final class FirestoreUser extends ICloudFirestore {
  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserStream() =>
      authUserPath.snapshots();

  Future<DocumentSnapshot<Map<String, dynamic>>> getUser() =>
      authUserPath.get();

  Future<void> createUserDoc(Mapped data) async {
    try {
      await authUserPath.set(data);
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      rethrow;
    }
  }
}
