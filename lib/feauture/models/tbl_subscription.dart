import 'package:apartment_system/index.dart';

final class TBLSupscription extends BaseDBModel<TBLSupscription> {
  final String? id;
  final String? flatUid;
  final String? water;
  final String? electricity;
  final String? internet;
  final String? gas;
  final String? tv;
  final String? phone;
  final String? cleaning;
  final String? security;
  final String? maintenance;
  final String? other;

  TBLSupscription({
    this.id,
    this.flatUid,
    this.water,
    this.electricity,
    this.internet,
    this.gas,
    this.tv,
    this.phone,
    this.cleaning,
    this.security,
    this.maintenance,
    this.other,
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
  TBLSupscription fromJson(Map<String, dynamic> json) {
    return TBLSupscription(
      id: json['id'],
      flatUid: json['flatUid'],
      water: json['water'],
      electricity: json['electricity'],
      internet: json['internet'],
      gas: json['gas'],
      tv: json['tv'],
      phone: json['phone'],
      cleaning: json['cleaning'],
      security: json['security'],
      maintenance: json['maintenance'],
      other: json['other'],
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

  factory TBLSupscription.fromJson(Map<String, dynamic> json) {
    return TBLSupscription(
      id: json['id'],
      flatUid: json['flatUid'],
      water: json['water'],
      electricity: json['electricity'],
      internet: json['internet'],
      gas: json['gas'],
      tv: json['tv'],
      phone: json['phone'],
      cleaning: json['cleaning'],
      security: json['security'],
      maintenance: json['maintenance'],
      other: json['other'],
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
      'flatUid': flatUid,
      'water': water,
      'electricity': electricity,
      'internet': internet,
      'gas': gas,
      'tv': tv,
      'phone': phone,
      'cleaning': cleaning,
      'security': security,
      'maintenance': maintenance,
      'other': other,
      'uid': uid,
      'createdDate': createdDate?.toIso8601String(),
      'updatedDate': updatedDate?.toIso8601String(),
      'deletedDate': deletedDate?.toIso8601String(),
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'deletedBy': deletedBy,
      'isDeleted': isDeleted?.toString(),
      'isActive': isActive?.toString(),
    };
  }

  @override
  TBLSupscription copyWith({
    String? id,
    String? flatUid,
    String? water,
    String? electricity,
    String? internet,
    String? gas,
    String? tv,
    String? phone,
    String? cleaning,
    String? security,
    String? maintenance,
    String? other,
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
    return TBLSupscription(
      id: id ?? this.id,
      flatUid: flatUid ?? this.flatUid,
      water: water ?? this.water,
      electricity: electricity ?? this.electricity,
      internet: internet ?? this.internet,
      gas: gas ?? this.gas,
      tv: tv ?? this.tv,
      phone: phone ?? this.phone,
      cleaning: cleaning ?? this.cleaning,
      security: security ?? this.security,
      maintenance: maintenance ?? this.maintenance,
      other: other ?? this.other,
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
        flatUid,
        water,
        electricity,
        internet,
        gas,
        tv,
        phone,
        cleaning,
        security,
        maintenance,
        other,
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
