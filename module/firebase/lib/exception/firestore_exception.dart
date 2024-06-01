class FirestoreException<T> implements Exception {
  final String code;
  final String message;

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2027188289.
  FirestoreException(this.code, this.message);
  FirestoreException.unknown(String message) : this('unknown-error', message);
  FirestoreException.emptyData() : this('empty-data','Empty Data');
  FirestoreException.notFoundData(String uid) : this('not-found-data', '${T.toString}: Collection in Document uid: $uid Data not found');

  @override
  String toString() => 'Firestore Exception $code - $message';
}