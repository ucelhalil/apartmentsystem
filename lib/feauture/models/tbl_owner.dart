
import 'package:apartment_system/index.dart';
import 'package:firebase/firebase.dart';

final class TBLOwner extends BaseDBModel<TBLOwner> {
  final String? id;
  final TBLCustomer? customer;

  TBLOwner({
    this.id,
    this.customer,
    super.uid,
    super.createdDate,
    super.updatedDate,
    super.deletedDate,
    super.createdBy,
    super.updatedBy,
    super.deletedBy,
    super.isDeleted,
    super.isActive,
  });

  @override
  TBLOwner fromJson(Map<String, dynamic> json) {
    return TBLOwner(
      id: json['id'],
      customer: TBLCustomer().fromJson(json['customer']),
      uid: json['uid'],
      createdDate: DateTime.tryParse(json['createdDate']),
      updatedDate: DateTime.tryParse(json['updatedDate']),
      deletedDate: DateTime.tryParse(json['deletedDate']),
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
      isDeleted: bool.tryParse(json['isDeleted']),
      isActive: bool.tryParse(json['isActive']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'customer': customer?.toJson(),
      'uid': uid,
      'createdDate': createdDate?.toIso8601String(),
      'updatedDate': updatedDate?.toIso8601String(),
      'deletedDate': deletedDate?.toIso8601String(),
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'deletedBy': deletedBy,
      'isDeleted': isDeleted,
      'isActive': isActive,
    };
  }

  factory TBLOwner.fromJson(Map<String, dynamic> json) {
    return TBLOwner(
      id: json['id'],
      customer: TBLCustomer().fromJson(json['customer']),
      uid: json['uid'],
      createdDate: DateTime.tryParse(json['createdDate']),
      updatedDate: DateTime.tryParse(json['updatedDate']),
      deletedDate: DateTime.tryParse(json['deletedDate']),
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
      isDeleted: bool.tryParse(json['isDeleted']),
      isActive: bool.tryParse(json['isActive']),
    );
  }

  @override
  TBLOwner copyWith({
    String? id,
    TBLCustomer? customer,
    String? uid,
    DateTime? createdDate,
    DateTime? updatedDate,
    DateTime? deletedDate,
    String? createdBy,
    String? updatedBy,
    String? deletedBy,
    bool? isDeleted,
    bool? isActive,
  }) {
    return TBLOwner(
      id: id ?? this.id,
      customer: customer ?? this.customer,
      uid: uid ?? this.uid,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      deletedDate: deletedDate ?? this.deletedDate,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      deletedBy: deletedBy ?? this.deletedBy,
      isDeleted: isDeleted ?? this.isDeleted,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  List<Object?> get props => [
        id,
        customer,
        uid,
        createdDate,
        updatedDate,
        deletedDate,
        createdBy,
        updatedBy,
        deletedBy,
        isDeleted,
        isActive,
      ];
}
