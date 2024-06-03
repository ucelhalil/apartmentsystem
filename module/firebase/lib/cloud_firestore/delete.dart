import 'package:firebase/firebase.dart';

final class FirestoreDelete<T> extends ICloudFirestore<T> {
  Future<void> setDelete(String docUid, Mapped data) async {
    try {
      data.update(
        'delete',
        (value) => true,
      );
      await collectionPathWithT.doc(docUid).update(data);
    } catch (e) {
      throw FirestoreException.unknown();
    }
  }
}
