import 'package:apartment_system/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

final class FirestoreUserData extends MyCloudFirestore {
  static FirestoreUserData? _of;
  static FirestoreUserData get of => _of ??= FirestoreUserData._();
  FirestoreUserData._();

  User? get currentUser => AuthUser.of.currentUser;
  bool get isUser => currentUser != null;

  late FireUser? _fireUser;

  Future<FireUser?> get fireUser async {
    if (isUser && _fireUser == null) {
      try {
        await authUserPath.get().then((snapshot) {
          _fireUser = FireUser.fromJson(snapshot.data()!);
        });
      } catch (e) {
        if (kDebugMode) debugPrint('FirestoreUserData.fireUser: $e');
      }
    }
    return _fireUser;
  }
}

final class FirestoreUser extends MyCloudFirestore {
  static FirestoreUser? _of;
  static FirestoreUser get of => _of ??= FirestoreUser._();
  FirestoreUser._();

  CollectionReference<Map<String, dynamic>> get _collection =>
      FirebaseFirestore.instance.collection('AuthUser');

  DocumentReference<Map<String, dynamic>> get _documentReference {
    if (AuthUser.of.currentUser == null) {
      if (kDebugMode) debugPrint('MyCloudFirestore User is null');
      return _collection.doc();
    }
    return _collection.doc(AuthUser.of.currentUser!.uid);
  }

  Future<FireUser> get user async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> snapshot =
          await _documentReference.get();
      return FireUser.fromJson(snapshot.data()!);
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreUser.user: $e');
      return FireUser();
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
      );
      // ---------------------
      await _collection.doc(credential.user?.uid).set(user.toJson());
      return true;
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreUser.create: $e');
      return false;
    }
  }

  Future<bool> setUser(FireUser user) async {
    try {
      await _documentReference.set(user.toJson());
      return true;
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreUser.setUser: $e');
      return false;
    }
  }

  Future<int> collectionCount<T>() async {
    try {
      final snapshot = await _collection
          .doc(AuthUser.of.currentUser?.uid)
          .collection(T.toString())
          .count()
          .get();
      return snapshot.count ?? -1;
    } catch (e) {
      if (kDebugMode) debugPrint('FirestoreUser.apartmentCount: $e');
      return 0;
    }
  }
}
