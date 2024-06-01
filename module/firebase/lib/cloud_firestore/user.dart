import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/firebase.dart';

final class FireUserData<T> extends ICloudFirestore<T> {

  Stream<DocumentSnapshot<Map<String, dynamic>>> getUserDoc() => authUserPath.snapshots();
}