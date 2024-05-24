class FireAuthException implements Exception {
  final String code;
  final String message;

  FireAuthException(this.code,this.message);

  @override
  String toString() => 'FirebaseAuthException: $code: $message';

}