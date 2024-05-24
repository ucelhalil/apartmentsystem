class FirestoreException implements Exception {
  final String code;
  final String message;

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2027188289.
  FirestoreException(this.code, this.message);

  @override
  String toString() => 'Firestore Exception $code - $message';
}