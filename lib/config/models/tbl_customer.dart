
import 'package:firebase/firebase.dart';

final class TBLCustomer extends BaseDBModel<TBLCustomer> {
  final String? id;
  final String? name;
  final String? email;
  final String? identityNo;
  final String? tax;
  final String? phone;
  final String? address;

  TBLCustomer({
    this.id,
    this.name,
    this.email,
    this.identityNo,
    this.tax,
    this.phone,
    this.address,
    super.uid,
    super.createdDate,
    super.updatedDate,
    super.deletedDate,
    super.isActive,
    super.isDeleted,
    super.createdBy,
    super.updatedBy,
    super.deletedBy,
  });

  @override
  TBLCustomer copyWith(
      {String? id,
      String? name,
      String? email,
      String? identityNo,
      String? tax,
      String? phone,
      String? address,
      String? uid,
      DateTime? createdDate,
      DateTime? updatedDate,
      DateTime? deletedDate,
      bool? isActive,
      bool? isDeleted,
      String? createdBy,
      String? updatedBy,
      String? deletedBy}) {
    return TBLCustomer(
      id: id,
      name: name,
      email: email,
      identityNo: identityNo,
      tax: tax,
      phone: phone,
      address: address,
      uid: uid,
      createdDate: createdDate,
      updatedDate: updatedDate,
      deletedDate: deletedDate,
      isActive: isActive,
      isDeleted: isDeleted,
      createdBy: createdBy,
      updatedBy: updatedBy,
      deletedBy: deletedBy,
    );
  }

  factory TBLCustomer.fromJson(Map<String, dynamic> json) {
    return TBLCustomer(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      identityNo: json['identityNo'],
      tax: json['tax'],
      phone: json['phone'],
      address: json['address'],
      uid: json['uid'],
      createdDate: DateTime.tryParse(json['createdDate']),
      updatedDate: DateTime.tryParse(json['updatedDate']),
      deletedDate: DateTime.tryParse(json['deletedDate']),
      isActive: bool.tryParse(json['isActive']),
      isDeleted: bool.tryParse(json['isDeleted']),
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
    );
  }

  @override
  TBLCustomer fromJson(Map<String, dynamic> json) {
    return TBLCustomer(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      identityNo: json['identityNo'],
      tax: json['tax'],
      phone: json['phone'],
      address: json['address'],
      uid: json['uid'],
      createdDate: DateTime.tryParse(json['createdDate']),
      updatedDate: DateTime.tryParse(json['updatedDate']),
      deletedDate: DateTime.tryParse(json['deletedDate']),
      isActive: bool.tryParse(json['isActive']),
      isDeleted: bool.tryParse(json['isDeleted']),
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        identityNo,
        tax,
        phone,
        address,
        uid,
        createdDate,
        updatedDate,
        deletedDate,
        isActive,
        isDeleted,
        createdBy,
        updatedBy,
        deletedBy,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'identityNo': identityNo,
      'tax': tax,
      'phone': phone,
      'address': address,
      'uid': uid,
      'createdDate': createdDate?.toIso8601String(),
      'updatedDate': updatedDate?.toIso8601String(),
      'deletedDate': deletedDate?.toIso8601String(),
      'isActive': isActive?.toString(),
      'isDeleted': isDeleted?.toString(),
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'deletedBy': deletedBy,
    };
  }
}
