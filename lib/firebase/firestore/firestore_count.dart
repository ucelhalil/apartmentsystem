import 'package:apartment_system/index.dart';
import 'package:flutter/foundation.dart';

final class FirestoreCount<T extends BaseDBModel> extends MyCloudFirestore<T> {

  
  Future<int> count() async {
    try {
      final response = await userCollectionPath.count().get();
      return response.count ?? -1;
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreCount.count: $e');
      return -1;
    }
  }

  Future<int> countWithWhere({
    required String field,
    required String isEqual,
  }) async {
    try {
      final response = await userCollectionPath
          .where(field, isEqualTo: isEqual)
          .count()
          .get();
      return response.count ?? -1;
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreCount.countWithWhere: $e');
      return -1;
    }
  }
}
