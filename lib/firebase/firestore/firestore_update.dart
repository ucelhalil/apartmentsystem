import 'package:apartment_system/index.dart';
import 'package:flutter/foundation.dart';

final class FirestoreUpdate<T extends BaseDBModel> extends MyCloudFirestore<T> {
  Future<FirestoreData> set({required T docData}) async {
    try {
      // ------------------------------
      debugPrint(docData.uid);
      debugPrint(docData.toJson().toString());
      await userCollectionPath.doc(docData.uid).update(docData.toJson());
      // ------------------------------
      return FirestoreData(
        data: docData.toJson(),
        uid: docData.uid,
        message: 'Success',
        hasError: false,
      );
      // ------------------------------
    } catch (e) {
      // ------------------------------
      if (kDebugMode) debugPrint('FirestoreUpdate.data: $e');
      return FirestoreData.empty(message: e.toString());
    }
  }
}
// Compare this snippet from lib/firebase/firestore/firestore_update.dart:
// import 'package:apartment_system/index.dart';