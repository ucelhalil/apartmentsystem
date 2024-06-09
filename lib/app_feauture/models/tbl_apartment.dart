
import 'package:apartment_system/index.dart';

final class TBLApartment extends BaseDBModel<TBLApartment> {
  final String? id;
  final String? name;
  final String? address;
  final int? floor;
  final int? flats;
  final DateTime? buildDate;
  final bool? haveElevator;

  TBLApartment({
    super.uid,
    this.id,
    this.name,
    this.address,
    this.floor,
    this.flats,
    this.buildDate,
    this.haveElevator,
    super.isFavorite,
    super.createdBy,
    super.updatedBy,
    super.deletedBy,
    super.isActive,
    super.isDeleted,
    super.createdDate,
    super.updatedDate,
    super.deletedDate,
  });

  TBLApartment.empty({
    super.uid,
    this.id,
    this.name,
    this.address,
    this.floor,
    this.flats,
    this.buildDate,
    this.haveElevator,
    super.isFavorite,
    super.createdBy,
    super.updatedBy,
    super.deletedBy,
    super.isActive,
    super.isDeleted,
    super.createdDate,
    super.updatedDate,
    super.deletedDate,
  });

  @override
  TBLApartment fromJson(Map<String, dynamic> json) {
    return TBLApartment(
      uid: json['uid'],
      id: json['id'],
      name: json['name'],
      address: json['address'],
      floor: json['floor'] == null ? null : int.tryParse(json['floor']),
      flats: json['flats'] == null ? null : int.tryParse(json['flats']),
      buildDate: json['buildDate'] == null
          ? null
          : DateTime.tryParse(json['buildDate']),
      haveElevator: json['haveElevator'] == null
          ? null
          : bool.tryParse(json['haveElevator']),
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
      isActive:
          json['isActive'] == null ? null : bool.tryParse(json['isActive']),
      isFavorite:
          json['isFavorite'] == null ? null : bool.tryParse(json['isFavorite']),
      isDeleted:
          json['isDeleted'] == null ? null : bool.tryParse(json['isDeleted']),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.tryParse(json['createdDate']),
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.tryParse(json['updatedDate']),
      deletedDate: json['deletedDate'] == null
          ? null
          : DateTime.tryParse(json['deletedDate']),
    );
  }

  factory TBLApartment.fromJson(Map<String, dynamic> json) {
    return TBLApartment(
      uid: json['uid'],
      id: json['id'],
      name: json['name'],
      address: json['address'],
      floor: json['floor'] == null ? null : int.tryParse(json['floor']),
      flats: json['flats'] == null ? null : int.tryParse(json['flats']),
      buildDate: json['buildDate'] == null
          ? null
          : DateTime.tryParse(json['buildDate']),
      haveElevator: json['haveElevator'] == null
          ? null
          : bool.tryParse(json['haveElevator']),
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      deletedBy: json['deletedBy'],
      isActive:
          json['isActive'] == null ? null : bool.tryParse(json['isActive']),
      isFavorite:
          json['isFavorite'] == null ? null : bool.tryParse(json['isFavorite']),
      isDeleted:
          json['isDeleted'] == null ? null : bool.tryParse(json['isDeleted']),
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.tryParse(json['createdDate']),
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.tryParse(json['updatedDate']),
      deletedDate: json['deletedDate'] == null
          ? null
          : DateTime.tryParse(json['deletedDate']),
    );
  }

  @override
  List<Object?> get props => [
        uid,
        id,
        name,
        address,
        floor,
        flats,
        buildDate,
        haveElevator,
        uid,
        isFavorite,
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
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'id': id,
      'name': name,
      'address': address,
      'floor': floor,
      'flats': flats,
      'buildDate': buildDate, // ?.toIso8601String(),
      'haveElevator': haveElevator, // ?.toString(),
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'deletedBy': deletedBy,
      'isActive': isActive, // ?.toString(),
      'isFavorite': isFavorite, // ?.toString(),
      'isDeleted': isDeleted, // ?.toString(),
      'createdDate': createdDate, // ?.toIso8601String(),
      'updatedDate': updatedDate, // ?.toIso8601String(),
      'deletedDate': deletedDate, // ?.toIso8601String(),
    };
  }

  @override
  TBLApartment copyWith({
    String? id,
    String? name,
    String? address,
    int? floor,
    int? flats,
    DateTime? buildDate,
    bool? haveElevator,
    String? uid,
    String? createdBy,
    String? updatedBy,
    String? deletedBy,
    bool? isActive,
    bool? isFavorite,
    bool? isDeleted,
    DateTime? createdDate,
    DateTime? updatedDate,
    DateTime? deletedDate,
  }) {
    return TBLApartment(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      floor: floor ?? this.floor,
      flats: flats ?? this.flats,
      buildDate: buildDate ?? this.buildDate,
      haveElevator: haveElevator ?? this.haveElevator,
      uid: uid ?? this.uid,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      deletedBy: deletedBy ?? this.deletedBy,
      isActive: isActive ?? this.isActive,
      isFavorite: isFavorite ?? this.isFavorite,
      isDeleted: isDeleted ?? this.isDeleted,
      createdDate: createdDate ?? this.createdDate,
      updatedDate: updatedDate ?? this.updatedDate,
      deletedDate: deletedDate ?? this.deletedDate,
    );
  }
}
