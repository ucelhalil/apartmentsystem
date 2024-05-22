import 'package:apartment_system/index.dart';
import 'package:apptext/auth.dart';
import 'package:flutter/foundation.dart';

class AuthErrorCode {
  AuthUserData getCode(String code) {
    switch (code) {
      case codeInvalidEmail:
        return AuthUserData.error(message: codeInvalidEmailMessage);
      case codeMissingAndroidPKG:
        return AuthUserData.error(message: codeMissingAndroidPKGMessage);
      case codeMissingContinueURI:
        return AuthUserData.error(message: codeMissingContinueURIMessage);
      case codeMissingIOSBundleID:
        return AuthUserData.error(message: codeMissingIOSBundleIDMessage);
      case codeInvalidContinueURI:
        return AuthUserData.error(message: codeInvalidContinueURIMessage);
      case codeUnAutherizedContinueURI:
        return AuthUserData.error(message: codeUnAutherizedContinueURIMessage);
      case codeUserNotFound:
        return AuthUserData.error(message: codeUserNotFoundMessage);
      case codeUserDisabled:
        return AuthUserData.error(message: codeUserDisabledMessage);
      case codeWrongPassword:
        return AuthUserData.error(message: codeWrongPasswordMessage);
      case codeUserMissmatch:
        return AuthUserData.error(message: codeUserMissmatchMessage);
      case codeInvalidCredential:
        return AuthUserData.error(message: codeInvalidCredentialMessage);
      case codeInvalidVerificationCode:
        return AuthUserData.error(message: codeInvalidVerificationCodeMessage);
      case codeInvalidVerificationId:
        return AuthUserData.error(message: codeInvalidVerificationIdMessage);
      case codeInvalidPhoneNumber:
        return AuthUserData.error(message: codeInvalidPhoneNumberMessage);
      case codeWeakPassword:
        return AuthUserData.error(message: codeWeakPasswordMessage);
      case codeEmailAlreadyInUse:
        return AuthUserData.error(message: codeEmailAlreadyInUseMessage);
      default:
        if (kDebugMode) debugPrint(code);
        return AuthUserData.error(message: 'Beklenmeyen bir hata oluştu.');
    }
  }
}
