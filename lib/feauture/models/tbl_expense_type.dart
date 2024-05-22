import 'package:apartment_system/index.dart';

final class TBLExpenseType extends BaseDBModel<TBLExpenseType> {
  final String? id;
  final String? title;
  final String? description;

  TBLExpenseType({
    this.id,
    this.title,
    this.description,
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
  TBLExpenseType copyWith(
      {String? id,
      String? title,
      String? description,
      String? uid,
      DateTime? createdDate,
      DateTime? updatedDate,
      DateTime? deletedDate,
      bool? isActive,
      bool? isDeleted,
      String? createdBy,
      String? updatedBy,
      String? deletedBy}) {
    return TBLExpenseType(
      id: id,
      title: title,
      description: description,
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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
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

  @override
  List<Object?> get props => [
        id,
        title,
        description,
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
  TBLExpenseType fromJson(Map<String, dynamic> json) {
    return TBLExpenseType(
      id: json['id'],
      title: json['title'],
      description: json['description'],
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
  factory TBLExpenseType.fromJson(Map<String, dynamic> json) {
    return TBLExpenseType(
      id: json['id'],
      title: json['title'],
      description: json['description'],
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
}
