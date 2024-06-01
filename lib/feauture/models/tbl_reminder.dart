
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';

final class TBLReminder extends BaseDBModel<TBLReminder> {
  final String? id;
  final String? title;
  final String? content;
  final DateTime? reminderDate;
  final bool? isDone;
  final String? reminderType;
  final Color? color;
  final DateTime? repeatDate;
  final String? description;

  TBLReminder({
    this.id,
    this.title,
    this.content,
    this.reminderDate,
    this.isDone,
    this.reminderType,
    super.isFavorite,
    this.color,
    this.repeatDate,
    this.description,
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
  TBLReminder fromJson(Map<String, dynamic> json) {
    return TBLReminder(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      reminderDate: DateTime.tryParse(json['reminderDate']),
      isDone: bool.tryParse(json['isDone']),
      reminderType: json['reminderType'],
      isFavorite: bool.tryParse(json['isFavorite']),
      color: int.tryParse(json['color']) != null
          ? Color(int.parse(json['color']))
          : null,
      repeatDate: DateTime.tryParse(json['repeatDate']),
      description: json['description'],
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
      'title': title,
      'content': content,
      'reminderDate': reminderDate?.toIso8601String(),
      'isDone': isDone?.toString(),
      'reminderType': reminderType,
      'isFavorite': isFavorite?.toString(),
      'color': color?.value.toString(),
      'repeatDate': repeatDate?.toIso8601String(),
      'description': description,
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

  factory TBLReminder.fromJson(Map<String, dynamic> json) {
    return TBLReminder(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      reminderDate: DateTime.tryParse(json['reminderDate']),
      isDone: bool.tryParse(json['isDone']),
      reminderType: json['reminderType'],
      isFavorite: bool.tryParse(json['isFavorite']),
      color: int.tryParse(json['color']) != null
          ? Color(int.parse(json['color']))
          : null,
      repeatDate: DateTime.tryParse(json['repeatDate']),
      description: json['description'],
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
  TBLReminder copyWith({
    String? id,
    String? title,
    String? content,
    DateTime? reminderDate,
    bool? isDone,
    String? reminderType,
    bool? isFavorite,
    Color? color,
    DateTime? repeatDate,
    String? description,
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
    return TBLReminder(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      reminderDate: reminderDate ?? this.reminderDate,
      isDone: isDone ?? this.isDone,
      reminderType: reminderType ?? this.reminderType,
      isFavorite: isFavorite ?? this.isFavorite,
      color: color ?? this.color,
      repeatDate: repeatDate ?? this.repeatDate,
      description: description ?? this.description,
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
        title,
        content,
        reminderDate,
        isDone,
        reminderType,
        isFavorite,
        color,
        repeatDate,
        description,
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
