import 'package:firebase/firebase.dart';

final class FirestoreUpdate<T> extends ICloudFirestore<T> {
  Future<void> setDocument(String uid, Mapped data) async {
    try {
      await collectionPathWithT.doc(uid).update(data);
    } catch (e) {
      throw FirestoreException.unknown();
    }
  }
}
