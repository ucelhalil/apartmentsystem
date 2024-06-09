import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:apartment_system/index.dart';

final class FirestoreUser extends IBaseFirebaseAuth {
  static FirestoreUser? _instance;
  static FirestoreUser get of => _instance ??= FirestoreUser._internal();
  FirestoreUser._internal();

  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  DocumentReference<TBLUser> get userDoc => firestore.collection(customerUser).doc(userId).withConverter<TBLUser>(
    fromFirestore: (snapshot,_) => TBLUser.fromJson(snapshot.data()!), 
    toFirestore: (model,_)=> model.toJson(),
  );

  Future<TBLUser> get userData  async {
    try {
      final response = await userDoc.get();
      if (response.exists && response.data() != null) {
        return response.data()!;  
      }
      throw FirestoreCustomException('document-not-found');
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }

  Future<bool?> createData(TBLUser user) async {
    try {
      await userDoc.set(user);  
      return true;
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }

  Future<void> updateData(TBLUser user) async {
    try {
      await userDoc.set(user);  
    } catch (e) {
      throw FirestoreCustomException(e.toString());
    }
  }
  
}
