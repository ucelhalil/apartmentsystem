import 'package:apartment_system/index.dart';
import 'package:flutter/foundation.dart';

final class FirestoreWrite<T extends BaseDBModel> extends MyCloudFirestore<T> {
  String? get newDocumentId => userCollectionPath.doc().id;

  Future<FirestoreData> add({required T docData}) async {
    try {
      // ------------------------------
      await userCollectionPath.doc(docData.uid).set(docData.toJson());

      // ------------------------------
      return FirestoreData(
        data: docData.toJson(),
        uid: null,
        message: 'Success',
        hasError: false,
      );
      // ------------------------------
    } catch (e) {
      // ------------------------------
      if (kDebugMode) debugPrint('FirestoreWrite.data: $e');
      return FirestoreData.empty(message: e.toString());
    }
  }
}
