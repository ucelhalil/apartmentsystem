import 'package:apartment_system/index.dart';
import 'package:flutter/foundation.dart';

final class FirestoreDelete<T extends BaseDBModel> extends MyCloudFirestore<T> {
  Future<FirestoreData> del({required String docUid}) async {
    try {
      await userCollectionPath.doc(docUid).delete();
      return FirestoreData(
        data: {},
        uid: docUid,
        message: 'Success',
        hasError: false,
      );
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreDelete.doc: $e');
      return FirestoreData.empty(message: e.toString());
    }
  }
}
