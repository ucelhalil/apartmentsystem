import 'dart:convert';

import 'package:apartment_system/index.dart';

final class TBLAnnouncement extends BaseDBModel<TBLAnnouncement> {
  final String? id;
  final List<String>? apartmentUid;
  final String? title;
  final String? content;
  final DateTime? publishDate;
  final bool? isPublished;

  TBLAnnouncement({
    super.uid,
    this.id,
    this.apartmentUid,
    this.title,
    this.content,
    this.publishDate,
    this.isPublished,
    super.createdBy,
    super.updatedBy,
    super.deletedBy,
    super.isActive,
    super.isDeleted,
    super.createdDate,
    super.updatedDate,
    super.deletedDate,
  });

  factory TBLAnnouncement.fromJson(Map<String, dynamic> json) {
    return TBLAnnouncement(
      uid: json['uid'],
      id: json['id'],
      apartmentUid: jsonDecode(json['apartmentUid']),
      title: json['title'],
      content: json['content'],
      publishDate: DateTime.tryParse(json['publishDate']),
      isPublished: bool.tryParse(json['isPublished']),
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
  TBLAnnouncement fromJson(Map<String, dynamic> json) {
    return TBLAnnouncement(
      uid: json['uid'],
      id: json['id'],
      apartmentUid: jsonDecode(json['apartmentUid']),
      title: json['title'],
      content: json['content'],
      publishDate: DateTime.tryParse(json['publishDate']),
      isPublished: bool.tryParse(json['isPublished']),
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
        uid,
        id,
        apartmentUid,
        title,
        content,
        publishDate,
        isPublished,
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
      'uid': uid,
      'id': id,
      'apartmentUid': jsonEncode(apartmentUid),
      'title': title,
      'content': content,
      'publishDate': publishDate.toString(),
      'isPublished': isPublished.toString(),
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'deletedBy': deletedBy,
      'isActive': isActive?.toString(),
      'isDeleted': isDeleted?.toString(),
      'createdDate': createdDate?.toString(),
      'updatedDate': updatedDate?.toString(),
      'deletedDate': deletedDate?.toString(),
    };
  }

  @override
  TBLAnnouncement copyWith({
    String? uid,
    String? id,
    List<String>? apartmentUid,
    String? title,
    String? content,
    DateTime? publishDate,
    bool? isPublished,
    String? createdBy,
    String? updatedBy,
    String? deletedBy,
    bool? isActive,
    bool? isDeleted,
    DateTime? createdDate,
    DateTime? updatedDate,
    DateTime? deletedDate,
  }) {
    return TBLAnnouncement(
      uid: uid ?? this.uid,
      id: id ?? this.id,
      apartmentUid: apartmentUid ?? this.apartmentUid,
      title: title ?? this.title,
      content: content ?? this.content,
      publishDate: publishDate ?? this.publishDate,
      isPublished: isPublished ?? this.isPublished,
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
