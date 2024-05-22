final class FirestoreData {
  final Map<String, dynamic> data;
  final String? uid;
  final String? message;
  final bool hasError;

  FirestoreData({
    required this.data,
    required this.uid,
    required this.message,
    required this.hasError,
  });

  bool get hasEror => hasError;

  FirestoreData.empty({
    this.data = const {},
    this.uid,
    required this.message,
    this.hasError = true,
  });
}

final class FirestoreListData {
  final List<FirestoreData> data;
  final String? message;
  final bool hasError;

  FirestoreListData({
    required this.data,
    required this.message,
    required this.hasError,
  });

  bool get hasEror => hasError;

  FirestoreListData.empty({
    this.data = const [],
    required this.message,
    this.hasError = true,
  });
}
