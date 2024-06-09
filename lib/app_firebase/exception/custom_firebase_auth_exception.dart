final class FirebaseAuthCustomException implements Exception {
  final String code;
  FirebaseAuthCustomException(this.code);

  static String get unknown => "unknown-error";
  static String get userNotExist => "user-not-sign";

  @override
  String toString() => '$this $code $message';

  String get message => switch (code) {
        "unknown-error" => "This error is Unknown message",
        "user-not-sign" => "Dont have any user signed",
        "invalid-email" => "The email address is not valid.",
        "invalid-credential" =>
          'The supplied auth credential is malformed or has expired.',
        "missing-android-pkg-name" =>
          "An Android package name must be provided if the Android app is required to be installed.",
        "missing-continue-uri" =>
          "A continue URL must be provided in the request.",
        "missing-ios-bundle-id" =>
          "An iOS Bundle ID must be provided if an App Store ID is provided.",
        "invalid-continue-uri" =>
          "The continue URL provided in the request is invalid.",
        "unauthorized-continue-uri" =>
          "The domain of the continue URL is not whitelisted. Whitelist the domain in the Firebase console.",
        "user-not-found" =>
          "There is no user corresponding to the email address.",
        "user-disabled" =>
          "The user account has been disabled by an administrator.",
        "wrong-password" =>
          "The password is invalid or the user does not have a password.",
        "email-already-in-use" =>
          "The email address is already in use by another account.",
        "operation-not-allowed" =>
          "Password sign-in is disabled for this project.",
        "weak-password" => "The password is not strong enough",
        _ => "Unknown error.",
      };
}
