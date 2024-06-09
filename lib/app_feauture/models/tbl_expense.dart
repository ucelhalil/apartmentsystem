
import 'package:apartment_system/index.dart';

final class TBLExpense extends BaseDBModel<TBLExpense> {
  final String? id;
  final String? expenseType;
  final String? apartmentUid;
  final String? flatUid;
  final double? amount;
  final DateTime? date;
  final String? description;

  TBLExpense({
    this.id,
    this.expenseType,
    this.apartmentUid,
    this.flatUid,
    this.amount,
    this.date,
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
  TBLExpense fromJson(Map<String, dynamic> json) {
    return TBLExpense(
      id: json['id'],
      expenseType: json['expenseType'],
      apartmentUid: json['apartmentUid'],
      flatUid: json['flatUid'],
      amount: double.tryParse(json['amount']),
      date: DateTime.tryParse(json['date']),
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

  factory TBLExpense.fromJson(Map<String, dynamic> json) {
    return TBLExpense(
      id: json['id'],
      expenseType: json['expenseType'],
      apartmentUid: json['apartmentUid'],
      flatUid: json['flatUid'],
      amount: double.tryParse(json['amount']),
      date: DateTime.tryParse(json['date']),
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
      'expenseType': expenseType,
      'apartmentUid': apartmentUid,
      'flatUid': flatUid,
      'amount': amount?.toString(),
      'date': date?.toIso8601String(),
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

  @override
  TBLExpense copyWith(
      {String? id,
      String? expenseType,
      String? apartmentUid,
      String? flatUid,
      double? amount,
      DateTime? date,
      String? description,
      String? uid,
      DateTime? createdDate,
      DateTime? updatedDate,
      DateTime? deletedDate,
      String? createdBy,
      String? updatedBy,
      String? deletedBy,
      bool? isDeleted,
      bool? isActive}) {
    return TBLExpense(
      id: id ?? this.id,
      expenseType: expenseType ?? this.expenseType,
      apartmentUid: apartmentUid ?? this.apartmentUid,
      flatUid: flatUid ?? this.flatUid,
      amount: amount ?? this.amount,
      date: date ?? this.date,
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
        expenseType,
        apartmentUid,
        flatUid,
        amount,
        date,
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
