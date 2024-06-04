import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/foundation.dart';

abstract class IStreamManager<T extends BaseDBModel>
    extends ICloudFirestore<T> {
  CollectionReference<Map<String, dynamic>> get userReference =>
      collectionPathWithT;

  Future<void> add(T model) async {
    try {
      await userReference.doc(model.uid).set(model.toJson());
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      throw Exception(e);
    }
  }

  Future<void> update(T model, String uid) async {
    try {
      await userReference.doc(uid).update(model.toJson());
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      throw Exception(e);
    }
  }

  Future<void> delete(String uid) async {
    try {
      await userReference.doc(uid).delete();
    } catch (e) {
      kDebugMode ? debugPrint(e.toString()) : null;
      throw Exception(e);
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> get getStream =>
      userReference.snapshots();

  Stream<QuerySnapshot<T>> withConverter(
    FromFirestore<T> fromFirestore,
    ToFirestore<T> toFirestore,
  ) =>
      userReference
          .withConverter<T>(
            fromFirestore: fromFirestore,
            toFirestore: toFirestore,
          )
          .snapshots();

  Stream<int> get count => getStream.map((event) => event.size);
}
