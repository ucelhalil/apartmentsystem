import 'package:codeofland/codeofland.dart';

abstract class BaseDBModel<T> implements BaseModel<T> {
  @override
  final String? uid;
  final bool? isActive;
  final bool? isDeleted;
  final bool? isFavorite;
  final String? createdBy;
  final String? updatedBy;
  final String? deletedBy;
  final DateTime? createdDate;
  final DateTime? updatedDate;
  final DateTime? deletedDate;

  BaseDBModel({
    this.uid,
    this.isActive,
    this.isDeleted,
    this.isFavorite,
    this.createdBy,
    this.updatedBy,
    this.deletedBy,
    this.createdDate,
    this.updatedDate,
    this.deletedDate,
  });

  T copyWith();

  @override
  bool? get stringify => true;
}
