import 'package:firebase/firebase.dart';

final class FirestoreWrite<T> extends ICloudFirestore<T>{
  String get docUid => collectionPathWithT.doc().id;

  Future<void> create(String uid, Mapped data) async {
    try {
      await collectionPathWithT.doc(uid).set(data);
    } catch (e) {
      throw FirestoreException.unknown(e.toString());
    }
  }

  Future<void> createWithUid(String uid, Mapped data) async {
    try {
      await collectionPathWithT.doc(uid).set(data);
    } catch (e) {
      throw FirestoreException.unknown(e.toString());
    }
  }
}