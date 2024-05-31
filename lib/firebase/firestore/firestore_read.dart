import 'package:apartment_system/index.dart';
import 'package:flutter/foundation.dart';

final class FirestoreRead<T extends BaseDBModel> extends MyCloudFirestore<T> {
  Future<FirestoreData> doc({required String docUid}) async {
    try {
      // ------------------------
      final snapshot = await userCollectionPath.doc(docUid).get();
      // ------------------------
      if (!snapshot.exists || snapshot.data() == null) {
        return FirestoreData.empty(message: 'No data found');
      }
      // ------------------------
      return FirestoreData(
        data: snapshot.data()!,
        uid: docUid,
        message: 'Success',
        hasError: false,
      );
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreRead.data: $e');
      return FirestoreData.empty(message: e.toString());
    }
  }

  Future<List<T>> collection() async {
    try {
      final snapshot = await userCollectionPath.get();
      // ------------------------
      if (snapshot.docs.isEmpty) {
        throw FirestoreException('data-isempty', 'Data is empty');
      }
      // TODO: Convert snapshot.docs to List<T>
      return [];
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreRead.collection: $e');
      throw FirestoreException('data-error', e.toString());
    }
  }
}
