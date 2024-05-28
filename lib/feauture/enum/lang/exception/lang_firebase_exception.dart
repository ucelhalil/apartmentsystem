import 'package:apartment_system/index.dart';

enum LangFirebaseException {
  invalidEmail,
  missingAndroidPKG,
  missingContinueURI,
  missingIOSBundleID,
  invalidContinueURI,
  unAutherizedContinueURI,
  userNotFound,
  userDisabled,
  wrongPassword,
  userMissmatch,
  invalidCredential,
  invalidVerificationCode,
  invalidVerificationId,
  invalidPhoneNumber,
  weakPassword,
  emailAlreadyInUse,
  ;

  String get text =>
      AppLang.firebaseException[name]?[langNotifier.value.name] ?? '';
}
