
import 'package:apartment_system/index.dart';

final class TBLFlats extends BaseDBModel<TBLFlats> {
  final String? id;
  final String? apartmentUid;
  final String? contractUid;
  final String? subscriptUid;
  final int? floor;
  final int? flats;
  final double? meter;
  final double? netMeter;
  final String? roomType;

  TBLFlats({
    this.id,
    this.apartmentUid,
    this.contractUid,
    this.subscriptUid,
    this.floor,
    this.flats,
    this.meter,
    this.netMeter,
    this.roomType,
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
  TBLFlats fromJson(Map<String, dynamic> json) {
    return TBLFlats(
      id: json['id'],
      apartmentUid: json['apartmentUid'],
      contractUid: json['contractUid'],
      subscriptUid: json['subscriptUid'],
      floor: int.tryParse(json['floor']),
      flats: int.tryParse(json['flats']),
      meter: double.tryParse(json['meter']),
      netMeter: double.tryParse(json['netMeter']),
      roomType: json['roomType'],
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

  factory TBLFlats.fromJson(Map<String, dynamic> json) {
    return TBLFlats(
      id: json['id'],
      apartmentUid: json['apartmentUid'],
      contractUid: json['contractUid'],
      subscriptUid: json['subscriptUid'],
      floor: int.tryParse(json['floor']),
      flats: int.tryParse(json['flats']),
      meter: double.tryParse(json['meter']),
      netMeter: double.tryParse(json['netMeter']),
      roomType: json['roomType'],
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
      'apartmentUid': apartmentUid,
      'contractUid': contractUid,
      'subscriptUid': subscriptUid,
      'floor': floor?.toString(),
      'flats': flats?.toString(),
      'meter': meter?.toString(),
      'netMeter': netMeter?.toString(),
      'roomType': roomType,
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
  TBLFlats copyWith({
    String? id,
    String? apartmentUid,
    String? contractUid,
    String? subscriptUid,
    int? floor,
    int? flats,
    double? meter,
    double? netMeter,
    String? roomType,
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
    return TBLFlats(
      id: id ?? this.id,
      apartmentUid: apartmentUid ?? this.apartmentUid,
      contractUid: contractUid ?? this.contractUid,
      subscriptUid: subscriptUid ?? this.subscriptUid,
      floor: floor ?? this.floor,
      flats: flats ?? this.flats,
      meter: meter ?? this.meter,
      netMeter: netMeter ?? this.netMeter,
      roomType: roomType ?? this.roomType,
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
        apartmentUid,
        contractUid,
        subscriptUid,
        floor,
        flats,
        meter,
        netMeter,
        roomType,
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
