import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:apartment_system/index.dart';

final class ICloudFirestore<T extends BaseDBModel<T>> extends IBaseFirebaseAuth {

  final FromFirestore<T> fromFirestore;
  final ToFirestore<T> toFirestore;

  ICloudFirestore({
    required this.fromFirestore,
    required this.toFirestore,
  });

  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get authCollection =>
      firestore.collection(customerUser);

  DocumentReference<Map<String, dynamic>> get authUserPath {
    if (user == null) {
      if (kDebugMode) debugPrint('MyCloudFirestore User is null');
      throw FirestoreCustomException.emptyUser();
    }
    return authCollection.doc(userId!);
  }

  String get newDocUid => withConverter.doc().id;

  CollectionReference<Map<String, dynamic>> get collectionPathWithT =>
      authUserPath.collection(T.toString());

  CollectionReference<T> get withConverter => 
     collectionPathWithT.withConverter<T>(
      fromFirestore: fromFirestore,
      toFirestore:  toFirestore,
    );
  
  Future<int> getCount() async{
    try {
      final snapshot = await withConverter.count().get();
      return snapshot.count ?? 0;
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }

  Future<T> getDocUid(String uid) async {
    try {
      final snapshot = await withConverter.doc(uid).get();
      if(snapshot.exists && snapshot.data() != null)  return snapshot.data()!;
      throw FirestoreCustomException('document-not-found');
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }

  Future<List<T>> getCollection() async {
    try {
      final snapshot = await withConverter.get();
      if(snapshot.docs.isEmpty) throw FirestoreCustomException('documents-not-found');
      return snapshot.docs.map((e) => e.data()).toList(); 
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }

  Future<void> addDoc( T data) async {
    try {
      await withConverter.add(data);
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }

  Future<void> updateDocUid(String uid, T data) async {
    try {
      await withConverter.doc(uid).set(data);
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }

  Future<void> deleteDocUid(String uid) async {
    try {
      await withConverter.doc(uid).delete();
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }

}
