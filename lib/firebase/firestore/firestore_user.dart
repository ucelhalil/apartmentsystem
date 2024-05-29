import 'package:apartment_system/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

final class FirestoreUser extends MyCloudFirestore {
  static FirestoreUser? _of;
  static FirestoreUser get of => _of ??= FirestoreUser._();
  FirestoreUser._();

  Future<FireUser> get getUser async {
    try {
      final response = await authUserPath.get();
      if (response.exists && response.data() != null) {
        return FireUser.fromJson(response.data()!);
      }
      throw FirestoreException('User Exception', 'Veri getirilemedi');
    } catch (e) {
      throw FirestoreException('User Exception', e.toString());
    }
  }

  Future<bool> create(UserCredential credential) async {
    try {
      FireUser user = FireUser(
        createdDate: DateTime.now(),
        createdBy: credential.user?.email,
        email: credential.user?.email,
        isActive: true,
        isDeleted: false,
        isFavorite: false,
        language: true,
        theme: true,
        planDate: DateTime.now().add(const Duration(days: 365)),
      );
      //
      await authUserPath.set(user.toJson());
      //
      return true;
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreUser.create: $e');
      return false;
    }
  }
}
