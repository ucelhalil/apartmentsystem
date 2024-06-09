class FirestoreCustomException implements Exception {
  final String code;
  FirestoreCustomException(this.code);
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2027188289.
  
  FirestoreCustomException.unknown() : this('unknown-error');
  FirestoreCustomException.emptyData() : this('empty-data');
  FirestoreCustomException.emptyUser(): this('empty-user');
  FirestoreCustomException.notFoundData(String uid) : this('not-found-data');

  @override
  String toString() => 'Firestore Exception $code';
}
