
import 'package:firebase/firebase.dart';

final class TBLContract extends BaseDBModel<TBLContract> {
  final String? id;
  final String? apartmentUid;
  final String? tenantUid;
  final String? flatUid;
  final String? ownerUid;
  final DateTime? start;
  final DateTime? end;
  final double? rent;
  final double? deposit;
  final double? commission;
  final double? tax;
  final double? total;

  TBLContract({
    super.uid,
    this.id,
    this.apartmentUid,
    this.tenantUid,
    this.flatUid,
    this.ownerUid,
    this.start,
    this.end,
    this.rent,
    this.deposit,
    this.commission,
    this.tax,
    this.total,
    super.createdBy,
    super.updatedBy,
    super.deletedBy,
    super.isActive,
    super.isDeleted,
    super.createdDate,
    super.updatedDate,
    super.deletedDate,
  });

  factory TBLContract.fromJson(Map<String, dynamic> json) {
    return TBLContract(
      uid: json['uid'],
      id: json['id'],
      apartmentUid: json['apartmentUid'],
      tenantUid: json['tenantUid'],
      flatUid: json['flatUid'],
      ownerUid: json['ownerUid'],
      start: DateTime.tryParse(json['start']),
      end: DateTime.tryParse(json['end']),
      rent: double.tryParse(json['rent']),
      deposit: double.tryParse(json['deposit']),
      commission: double.tryParse(json['commission']),
      tax: double.tryParse(json['tax']),
      total: double.tryParse(json['total']),
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
      isActive: bool.tryParse(json['isActive']),
      isDeleted: bool.tryParse(json['isDeleted']),
      createdDate: DateTime.tryParse(json['createdDate']),
      updatedDate: DateTime.tryParse(json['updatedDate']),
      deletedDate: DateTime.tryParse(json['deletedDate']),
    );
  }

  @override
  TBLContract fromJson(Map<String, dynamic> json) {
    return TBLContract(
      uid: json['uid'],
      id: json['id'],
      apartmentUid: json['apartmentUid'],
      tenantUid: json['tenantUid'],
      flatUid: json['flatUid'],
      ownerUid: json['ownerUid'],
      start: DateTime.tryParse(json['start']),
      end: DateTime.tryParse(json['end']),
      rent: double.tryParse(json['rent']),
      deposit: double.tryParse(json['deposit']),
      commission: double.tryParse(json['commission']),
      tax: double.tryParse(json['tax']),
      total: double.tryParse(json['total']),
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
      isActive: bool.tryParse(json['isActive']),
      isDeleted: bool.tryParse(json['isDeleted']),
      createdDate: DateTime.tryParse(json['createdDate']),
      updatedDate: DateTime.tryParse(json['updatedDate']),
      deletedDate: DateTime.tryParse(json['deletedDate']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'id': id,
      'apartmentUid': apartmentUid,
      'tenantUid': tenantUid,
      'flatUid': flatUid,
      'ownerUid': ownerUid,
      'start': start?.toIso8601String(),
      'end': end?.toIso8601String(),
      'rent': rent?.toString(),
      'deposit': deposit?.toString(),
      'commission': commission?.toString(),
      'tax': tax?.toString(),
      'total': total?.toString(),
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'deletedBy': deletedBy,
      'isActive': isActive?.toString(),
      'isDeleted': isDeleted?.toString(),
      'createdDate': createdDate?.toIso8601String(),
      'updatedDate': updatedDate?.toIso8601String(),
      'deletedDate': deletedDate?.toIso8601String(),
    };
  }

  @override
  List<Object?> get props => [
        uid,
        id,
        apartmentUid,
        tenantUid,
        flatUid,
        ownerUid,
        start,
        end,
        rent,
        deposit,
        commission,
        tax,
        total,
        createdBy,
        updatedBy,
        deletedBy,
        isActive,
        isDeleted,
        createdDate,
        updatedDate,
        deletedDate,
      ];

  @override
  TBLContract copyWith({
    String? id,
    String? apartmentUid,
    String? tenantUid,
    String? flatUid,
    String? ownerUid,
    DateTime? start,
    DateTime? end,
    double? rent,
    double? deposit,
    double? commission,
    double? tax,
    double? total,
    String? createdBy,
    String? updatedBy,
    String? deletedBy,
    bool? isActive,
    bool? isDeleted,
    DateTime? createdDate,
    DateTime? updatedDate,
    DateTime? deletedDate,
  }) {
    return TBLContract(
      uid: uid,
      id: id ?? this.id,
      apartmentUid: apartmentUid ?? this.apartmentUid,
      tenantUid: tenantUid ?? this.tenantUid,
      flatUid: flatUid ?? this.flatUid,
      ownerUid: ownerUid ?? this.ownerUid,
      start: start ?? this.start,
      end: end ?? this.end,
      rent: rent ?? this.rent,
      deposit: deposit ?? this.deposit,
      commission: commission ?? this.commission,
      tax: tax ?? this.tax,
      total: total ?? this.total,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      deletedBy: deletedBy ?? this.deletedBy,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      deletedDate: deletedDate ?? this.deletedDate,
    );
  }
}
