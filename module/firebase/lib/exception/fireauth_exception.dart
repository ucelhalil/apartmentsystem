class FireAuthException implements Exception {
  final String code;
  final String message;

  FireAuthException(this.code, this.message);
  FireAuthException.invalidEmail() : this('invalid-email', 'Invalid email for the user');
  FireAuthException.invalidPassword() : this('invalid-password', 'Invalid password for the user');
  FireAuthException.userNotSignedIn() : this('user-not-signed-in', 'User is not signed in');

  @override
  String toString() => 'FireAuth Exception $code - $message';

  

}