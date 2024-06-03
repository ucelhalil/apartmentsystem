import 'package:firebase/firebase.dart';
import 'package:flutter/foundation.dart';

final class FirestoreWrite<T> extends ICloudFirestore<T> {
  String get docUid => collectionPathWithT.doc().id;

  Future<void> create(String uid, Mapped data) async {
    try {
      await collectionPathWithT.doc(uid).set(data);
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      throw FirestoreException.unknown();
    }
  }

  Future<void> createWithUid(String uid, Mapped data) async {
    try {
      await collectionPathWithT.doc(uid).set(data);
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      throw FirestoreException.unknown();
    }
  }
}
