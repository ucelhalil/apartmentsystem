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

  Future<FirestoreListData> collection() async {
    try {
      final snapshot = await userCollectionPath.get();

      if (snapshot.docs.isEmpty) {
        return FirestoreListData.empty(message: 'No data found');
      }
      return FirestoreListData(
        data: snapshot.docs
            .map(
              (e) => FirestoreData(
                data: e.data(),
                uid: e.id,
                message: e.exists ? 'Success' : 'Failed',
                hasError: !e.exists,
              ),
            )
            .toList(),
        message: 'Success',
        hasError: false,
      );
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreRead.collection: $e');
      return FirestoreListData.empty(message: e.toString());
    }
  }
}
