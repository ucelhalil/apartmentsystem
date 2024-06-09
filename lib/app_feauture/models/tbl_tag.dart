
import 'package:apartment_system/index.dart';
import 'package:flutter/material.dart';

final class TBLTags extends BaseDBModel<TBLTags> {
  final String? id;
  final String? name;
  final String? description;
  final Color? color;

  TBLTags({
    super.uid,
    this.id,
    this.name,
    this.description,
    this.color,
    super.createdBy,
    super.updatedBy,
    super.deletedBy,
    super.isActive,
    super.isDeleted,
    super.createdDate,
    super.updatedDate,
    super.deletedDate,
  });

  factory TBLTags.fromJson(Map<String, dynamic> json) {
    return TBLTags(
      uid: json['uid'],
      id: json['id'],
      name: json['name'],
      description: json['description'],
      color: int.tryParse(json['color']) != null
          ? Color(int.parse(json['color']))
          : null,
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
  TBLTags fromJson(Map<String, dynamic> json) {
    return TBLTags(
      uid: json['uid'],
      id: json['id'],
      name: json['name'],
      description: json['description'],
      color: int.tryParse(json['color']) != null
          ? Color(int.parse(json['color']))
          : null,
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
  List<Object?> get props => [
        id,
        name,
        description,
        color,
        uid,
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
      'id': id,
      'name': name,
      'description': description,
      'color': color?.value.toString(),
      'uid': uid,
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
  TBLTags copyWith(
      {String? id,
      String? name,
      String? description,
      Color? color,
      String? uid,
      String? createdBy,
      String? updatedBy,
      String? deletedBy,
      bool? isActive,
      bool? isDeleted,
      DateTime? createdDate,
      DateTime? updatedDate,
      DateTime? deletedDate}) {
    return TBLTags(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      color: color ?? this.color,
      uid: uid ?? this.uid,
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
