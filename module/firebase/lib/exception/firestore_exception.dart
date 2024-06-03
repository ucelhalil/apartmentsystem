class FirestoreException<T> implements Exception {
  final String code;

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2027188289.
  FirestoreException(this.code);
  FirestoreException.unknown() : this('unknown-error');
  FirestoreException.emptyData() : this('empty-data');
  FirestoreException.notFoundData(String uid) : this('not-found-data');

  @override
  String toString() => 'Firestore Exception $code';
}
