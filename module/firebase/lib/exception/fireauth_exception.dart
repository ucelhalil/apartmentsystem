class FireAuthException implements Exception {
  final String code;

  FireAuthException(this.code);
  FireAuthException.invalidEmail() : this('invalid-email');
  FireAuthException.invalidPassword() : this('invalid-password');
  FireAuthException.userNotSignedIn() : this('user-not-signed-in');

  @override
  String toString() => 'FireAuth Exception $code';
}
