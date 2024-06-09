extension EmailRegexExtension on String {
  /// // Example:
  /// const String validEmail = "example@example.com";
  /// const String invalidEmail = "example";
  ///
  /// // Check if the email is valid
  /// if (validEmail.isEmail()) {
  ///   // Email is valid
  /// } else {
  ///   // Email is invalid
  /// }
  bool isEmail() => RegExp(_emailPattern).hasMatch(this);
  String get _emailPattern =>
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  /// // Example:
  /// const String validPassword = "Example123!";
  /// const String invalidPassword = "example";
  /// // Check if the password is valid
  /// if (validPassword.isPassword()) {
  ///   // Password is valid
  /// } else {
  ///   // Password is invalid
  /// }
  ///
  bool isPassword() => RegExp(_passwordPattern).hasMatch(this);
  String get _passwordPattern => r"^(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$";
}
