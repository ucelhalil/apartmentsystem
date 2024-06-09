
import 'package:apartment_system/index.dart';
import 'package:flutter/material.dart';

final class FirestoreManager {
  static  FirestoreManager? _instance;
  static FirestoreManager get instance => _instance ??= FirestoreManager._internal();
  FirestoreManager._internal();


  final ICloudFirestore<TBLApartment> tblApartment = ICloudFirestore<TBLApartment>(
    fromFirestore: (snapshot,_) => TBLApartment.fromJson(snapshot.data()!), 
    toFirestore: (model,_) => model.toJson(),
  );

  ValueNotifier tblApartmentNotifier = ValueNotifier<TableDataState<TBLApartment>>(TableDataState());

  final ICloudFirestore<TBLFlats> tblFlats = ICloudFirestore<TBLFlats>(
    fromFirestore: (snapshot,_) => TBLFlats.fromJson(snapshot.data()!), 
    toFirestore: (model,_) => model.toJson(),
  );

  ValueNotifier tblFlatsNotifier = ValueNotifier<TableDataState<TBLFlats>>(TableDataState());

  
}

