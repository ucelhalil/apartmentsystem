import 'package:firebase/firebase.dart';

typedef Mapped = Map<String, dynamic>;

final class FirestoreRead<T> extends ICloudFirestore<T> {
  Future<Mapped> getDocumentUid(String uid) async {
    try {
      final response = await collectionPathWithT.doc(uid).get();
      // ----
      if (!response.exists || response.data() == null) {
        throw FirestoreException.notFoundData(uid);
      }
      // ---
      return response.data()!;
    } catch (e) {
      throw FirestoreException.unknown();
    }
  }

  Future<List<Mapped>> getCollectionWithoudDeleted() async {
    try {
      final response =
          await collectionPathWithT.where('isDeleted', isEqualTo: false).get();
      // ---
      if (response.docs.isEmpty) {
        throw FirestoreException.emptyData();
      }
      // ---
      return response.docs.map((e) => e.data()).toList();
    } catch (e) {
      throw FirestoreException.unknown();
    }
  }

  Stream<List<Mapped>> getCollectionStream() {
    return collectionPathWithT.snapshots().map((event) {
      return event.docs.map((e) => e.data()).toList();
    });
  }
}
