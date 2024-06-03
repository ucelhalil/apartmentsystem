import 'package:firebase/firebase.dart';
import 'package:flutter/foundation.dart';

final class FirestoreCount<T> extends ICloudFirestore<T> {
  Future<int> getCount() async {
    try {
      final response = await collectionPathWithT.count().get();
      return response.count ?? 0;
    } catch (e) {
      if (kDebugMode) debugPrint(e.toString());
      throw FirestoreException.unknown();
    }
  }
}
