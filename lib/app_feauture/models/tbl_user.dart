import 'package:apartment_system/index.dart';

final class TBLUser extends BaseDBModel<TBLUser> {
  final String? displayName;
  final String? email;
  final String? photoURL;
  final String? phoneNumber;
  final String? plans;
  final bool? theme;
  final bool? language;
  final DateTime? planDate;
  final int? apartment;
  final int? flat;

  TBLUser({
    this.displayName,
    this.email,
    this.photoURL,
    this.phoneNumber,
    this.plans = 'free',
    this.apartment = 2,
    this.flat = 5,
    this.planDate,
    this.language,
    this.theme,
    super.uid,
    super.createdBy,
    super.createdDate,
    super.updatedBy,
    super.updatedDate,
    super.deletedBy,
    super.deletedDate,
    super.isDeleted,
    super.isActive,
    super.isFavorite,
  });

  TBLUser.empty({
    this.displayName,
    this.email,
    this.photoURL,
    this.phoneNumber,
    this.plans,
    this.apartment,
    this.flat,
    this.planDate,
    this.language,
    this.theme,
    super.uid,
    super.createdBy,
    super.createdDate,
    super.updatedBy,
    super.updatedDate,
    super.deletedBy,
    super.deletedDate,
    super.isDeleted,
    super.isActive,
    super.isFavorite,
    });

  @override
  TBLUser copyWith({
    String? displayName,
    String? email,
    String? photoURL,
    String? phoneNumber,
    String? plans,
    int? apartment,
    int? flat,
    DateTime? planDate,
    bool? theme,
    bool? language,
    String? uid,
    String? createdBy,
    DateTime? createdDate,
    String? updatedBy,
    DateTime? updatedDate,
    String? deletedBy,
    DateTime? deletedDate,
    bool? isDeleted,
    bool? isActive,
    bool? isFavorite,
  }) {
    return TBLUser(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      photoURL: photoURL ?? this.photoURL,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      plans: plans ?? this.plans,
      planDate: planDate ?? this.planDate,
      theme: theme ?? this.theme,
      language: language ?? this.language,
      apartment: apartment ?? this.apartment,
      uid: uid ?? this.uid,
      flat: flat ?? this.flat,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      updatedBy: updatedBy ?? this.updatedBy,
      updatedDate: updatedDate ?? this.updatedDate,
      deletedBy: deletedBy ?? this.deletedBy,
      deletedDate: deletedDate ?? this.deletedDate,
      isDeleted: isDeleted ?? this.isDeleted,
      isActive: isActive ?? this.isActive,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  TBLUser fromJson(Map<String, dynamic> json) {
    return TBLUser(
      displayName: json['displayName'],
      email: json['email'],
      photoURL: json['photoURL'],
      phoneNumber: json['phoneNumber'],
      plans: json['plans'],
      planDate:
          json['planDate'] == null ? null : DateTime.tryParse(json['planDate']),
      theme: json['theme'] == null ? null : bool.tryParse(json['theme']),
      language:
          json['language'] == null ? null : bool.tryParse(json['language']),
      apartment:
          json['apartment'] == null ? null : int.tryParse(json['apartment']),
      flat: json['flat'] == null ? null : int.tryParse(json['flat']),
      uid: json['uid'],
      createdBy: json['createdBy'],
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.tryParse(json['createdDate']),
      updatedBy: json['updatedBy'],
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.tryParse(json['updatedDate']),
      deletedBy: json['deletedBy'],
      deletedDate: json['deletedDate'] == null
          ? null
          : DateTime.tryParse(json['deletedDate']),
      isDeleted:
          json['isDeleted'] == null ? null : bool.tryParse(json['isDeleted']),
      isActive:
          json['isActive'] == null ? null : bool.tryParse(json['isActive']),
      isFavorite:
          json['isFavorite'] == null ? null : bool.tryParse(json['isFavorite']),
    );
  }

  factory TBLUser.fromJson(Map<String, dynamic> json) {
    return TBLUser(
      displayName: json['displayName'],
      email: json['email'],
      photoURL: json['photoURL'],
      phoneNumber: json['phoneNumber'],
      plans: json['plans'],
      planDate:
          json['planDate'] == null ? null : DateTime.tryParse(json['planDate']),
      theme: json['theme'] == null ? null : bool.tryParse(json['theme']),
      language:
          json['language'] == null ? null : bool.tryParse(json['language']),
      apartment:
          json['apartment'] == null ? null : int.tryParse(json['apartment']),
      flat: json['flat'] == null ? null : int.tryParse(json['flat']),
      uid: json['uid'],
      createdBy: json['createdBy'],
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.tryParse(json['createdDate']),
      updatedBy: json['updatedBy'],
      updatedDate: json['updatedDate'] == null
          ? null
          : DateTime.tryParse(json['updatedDate']),
      deletedBy: json['deletedBy'],
      deletedDate: json['deletedDate'] == null
          ? null
          : DateTime.tryParse(json['deletedDate']),
      isDeleted:
          json['isDeleted'] == null ? null : bool.tryParse(json['isDeleted']),
      isActive:
          json['isActive'] == null ? null : bool.tryParse(json['isActive']),
      isFavorite:
          json['isFavorite'] == null ? null : bool.tryParse(json['isFavorite']),
    );
  }

  @override
  List<Object?> get props => [
        displayName,
        email,
        photoURL,
        phoneNumber,
        plans,
        apartment,
        planDate,
        theme,
        language,
        flat,
        uid,
        createdBy,
        createdDate,
        updatedBy,
        updatedDate,
        deletedBy,
        deletedDate,
        isDeleted,
        isActive,
        isFavorite,
      ];

  @override
  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'email': email,
      'photoURL': photoURL,
      'phoneNumber': phoneNumber,
      'plans': plans,
      'planDate': planDate, //?.toIso8601String(),
      'theme': theme, //?.toString(),
      'language': language, //?.toString(),
      'apartment': apartment, //?.toString(),
      'flat': flat, //?.toString(),
      'uid': uid,
      'createdBy': createdBy,
      'createdDate': createdDate, //?.toIso8601String(),
      'updatedBy': updatedBy,
      'updatedDate': updatedDate, //?.toIso8601String(),
      'deletedBy': deletedBy,
      'deletedDate': deletedDate, //?.toIso8601String(),
      'isDeleted': isDeleted, //?.toString(),
      'isActive': isActive, //?.toString(),
      'isFavorite': isFavorite, //?.toString(),
    };
  }
}
