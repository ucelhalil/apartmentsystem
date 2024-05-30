import 'package:apartment_system/index.dart';

final class FireUser extends BaseDBModel<FireUser> {
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

  FireUser({
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
  FireUser copyWith({
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
    return FireUser(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      photoURL: photoURL ?? this.photoURL,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      plans: plans ?? this.plans,
      planDate: planDate ?? this.planDate,
      theme: theme ?? this.theme,
      language: language ?? this.language,
      apartment: apartment ?? this.apartment,
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
  FireUser fromJson(Map<String, dynamic> json) {
    return FireUser(
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

  factory FireUser.fromJson(Map<String, dynamic> json) {
    return FireUser(
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
      'planDate': planDate?.toIso8601String(),
      'theme': theme?.toString(),
      'language': language?.toString(),
      'apartment': apartment?.toString(),
      'flat': flat?.toString(),
      'createdBy': createdBy,
      'createdDate': createdDate?.toIso8601String(),
      'updatedBy': updatedBy,
      'updatedDate': updatedDate?.toIso8601String(),
      'deletedBy': deletedBy,
      'deletedDate': deletedDate?.toIso8601String(),
      'isDeleted': isDeleted?.toString(),
      'isActive': isActive?.toString(),
      'isFavorite': isFavorite?.toString(),
    };
  }
}



// import 'dart:convert';

// import 'base_db_model.dart';

// final class TBLUser extends BaseDBModel<TBLUser> {
//   final String? email;
//   final String? displayName;
//   final String? photoURL;
//   final String? role;
//   final String? plans;
//   final List<String>? sharedUid;

//   TBLUser({
//     super.uid,
//     this.email,
//     this.displayName,
//     this.photoURL,
//     this.sharedUid,
//     this.role,
//     this.plans,
//     super.createdBy,
//     super.createdDate,
//     super.updatedBy,
//     super.updatedDate,
//     super.deletedBy,
//     super.deletedDate,
//     super.isActive,
//     super.isDeleted,
//   });

//   @override
//   TBLUser copyWith({
//     String? uid,
//     String? email,
//     String? displayName,
//     String? photoURL,
//     String? role,
//     String? plans,
//     List<String>? sharedUid,
//     String? createdBy,
//     DateTime? createdDate,
//     String? updatedBy,
//     DateTime? updatedDate,
//     String? deletedBy,
//     DateTime? deletedDate,
//     bool? isActive,
//     bool? isDeleted,
//   }) {
//     return TBLUser(
//       uid: uid ?? this.uid,
//       email: email ?? this.email,
//       displayName: displayName ?? this.displayName,
//       photoURL: photoURL ?? this.photoURL,
//       role: role ?? this.role,
//       plans: plans ?? this.plans,
//       sharedUid: sharedUid ?? this.sharedUid,
//       createdBy: createdBy ?? this.createdBy,
//       createdDate: createdDate ?? this.createdDate,
//       updatedBy: updatedBy ?? this.updatedBy,
//       updatedDate: updatedDate ?? this.updatedDate,
//       deletedBy: deletedBy ?? this.deletedBy,
//       deletedDate: deletedDate ?? this.deletedDate,
//       isActive: isActive ?? this.isActive,
//       isDeleted: isDeleted ?? this.isDeleted,
//     );
//   }

//   factory TBLUser.fromJson(Map<String, dynamic> json) {
//     return TBLUser(
//       uid: json['uid'],
//       email: json['email'],
//       displayName: json['displayName'],
//       photoURL: json['photoURL'],
//       role: json['role'],
//       plans: json['plans'],
//       sharedUid: jsonDecode(json['sharedUid']),
//       createdBy: json['createdBy'],
//       createdDate: DateTime.tryParse(json['createdDate']),
//       updatedBy: json['updatedBy'],
//       updatedDate: DateTime.tryParse(json['updatedDate']),
//       deletedBy: json['deletedBy'],
//       deletedDate: DateTime.tryParse(json['deletedDate']),
//       isActive: bool.tryParse(json['isActive']),
//       isDeleted: bool.tryParse(json['isDeleted']),
//     );
//   }

//   @override
//   TBLUser fromJson(Map<String, dynamic> json) {
//     return TBLUser(
//       uid: json['uid'],
//       email: json['email'],
//       displayName: json['displayName'],
//       photoURL: json['photoURL'],
//       role: json['role'],
//       plans: json['plans'],
//       sharedUid: jsonDecode(json['sharedUid']),
//       createdBy: json['createdBy'],
//       createdDate: DateTime.tryParse(json['createdDate']),
//       updatedBy: json['updatedBy'],
//       updatedDate: DateTime.tryParse(json['updatedDate']),
//       deletedBy: json['deletedBy'],
//       deletedDate: DateTime.tryParse(json['deletedDate']),
//       isActive: bool.tryParse(json['isActive']),
//       isDeleted: bool.tryParse(json['isDeleted']),
//     );
//   }

//   @override
//   List<Object?> get props => [
//         uid,
//         email,
//         displayName,
//         photoURL,
//         role,
//         plans,
//         sharedUid,
//         createdBy,
//         createdDate,
//         updatedBy,
//         updatedDate,
//         deletedBy,
//         deletedDate,
//         isActive,
//         isDeleted,
//       ];

//   @override
//   bool? get stringify => true;

//   @override
//   Map<String, dynamic> toJson() {
//     return {
//       'uid': uid,
//       'email': email,
//       'displayName': displayName,
//       'photoURL': photoURL,
//       'role': role,
//       'plans': plans,
//       'sharedUid': jsonEncode(sharedUid),
//       'createdBy': createdBy,
//       'createdDate': createdDate?.toIso8601String(),
//       'updatedBy': updatedBy,
//       'updatedDate': updatedDate?.toIso8601String(),
//       'deletedBy': deletedBy,
//       'deletedDate': deletedDate?.toIso8601String(),
//       'isActive': isActive?.toString(),
//       'isDeleted': isDeleted?.toString(),
//     };
//   }
// }
