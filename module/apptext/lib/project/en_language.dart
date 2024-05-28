// import 'package:flutter/widgets.dart';

// class DrawerSection {
//   static const home = {
//     'en': 'Home',
//     'tr': 'Ana Sayfa',
//   };
// }

// class TextExample extends StatelessWidget {
//   const TextExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Text(DrawerSection.home.tr);
//   }
// }

// extension MapLanguageExtension on Map<String, String> {
//   String get en => this['en'] ?? '';
//   String get tr => this['tr'] ?? '';
// }


// // import 'package:apptext/apptext.dart';

// // final class ENLanguage extends ILanguage {
// //   const ENLanguage();

// //   @override
// //   AppLanguage get app => AppLanguage(title: 'Apartment Manager');

// //   @override
// //   DrawerTextSection get drawer => DrawerTextSection(
// //         home: 'Home',
// //         settings: 'Settings',
// //         profile: 'Profile',
// //         logout: 'Logout',
// //         module: 'Module',
// //         apartment: 'Apartment',
// //         report: 'Report',
// //       );

// //   @override
// //   AuthExceptionText get authException => AuthExceptionText(
// //         invalidEmail: 'invalid-email',
// //         invalidEmailMessage: 'The email address is badly formatted.',
// //         missingAndroidPKG: 'missing-android-pkg-name',
// //         missingAndroidPKGMessage:
// //             'An Android Package Name must be provided if the Android App is required.',
// //         missingContinueURI: 'missing-continue-uri',
// //         missingContinueURIMessage:
// //             'A continue URL must be provided in the request.',
// //         missingIOSBundleID: 'missing-ios-bundle-id',
// //         missingIOSBundleIDMessage:
// //             'An iOS Bundle ID must be provided if an App Store ID is provided.',
// //         invalidContinueURI: 'invalid-continue-uri',
// //         invalidContinueURIMessage:
// //             'The continue URL provided in the request is invalid.',
// //         unAutherizedContinueURI: 'unauthorized-continue-uri',
// //         unAutherizedContinueURIMessage:
// //             'The domain of the continue URL is not whitelisted. Whitelist the domain in the Firebase console.',
// //         userNotFound: 'user-not-found',
// //         userNotFoundMessage:
// //             'There is no user record corresponding to this identifier. The user may have been deleted.',
// //         userDisabled: 'user-disabled',
// //         userDisabledMessage:
// //             'The user account has been disabled by an administrator.',
// //         wrongPassword: 'wrong-password',
// //         wrongPasswordMessage:
// //             'The password is invalid or the user does not have a password.',
// //         userMissmatch: 'user-mismatch',
// //         userMissmatchMessage:
// //             'The supplied credentials do not correspond to the previously signed in user.',
// //         invalidCredential: 'invalid-credential',
// //         invalidCredentialMessage:
// //             'The supplied auth credential is malformed or has expired.',
// //         invalidVerificationCode: 'invalid-verification-code',
// //         invalidVerificationCodeMessage:
// //             'The SMS verification code used to create the phone auth credential is invalid. Please resend the verification code sms and be sure use the verification code provided by the user.',
// //         invalidVerificationID: 'invalid-verification-id',
// //         invalidVerificationIDMessage:
// //             'The verification ID used to create the phone auth credential is invalid.',
// //         invalidPhoneNumber: 'invalid-phone-number',
// //         invalidPhoneNumberMessage:
// //             'The format of the phone number provided is incorrect. Please enter the phone number in a format that can be parsed into E.164 format. E.164 phone numbers are written in the format [+][country code][subscriber number] and can have a maximum of fifteen digits.',
// //         weakPassword: 'weak-password',
// //         weakPasswordMessage: 'The password must be 6 characters long or more.',
// //         emailAlreadyInUse: 'email-already-in-use',
// //         emailAlreadyInUseMessage:
// //             'The email address is already in use by another account.',
// //       );

// //   @override
// //   AuthFormErrorText get authFormError => AuthFormErrorText(
// //         emptyField: 'This field cannot be empty',
// //         invalidEmail: 'Invalid email address',
// //         invalidPassword: 'Invalid password',
// //         invalidPhoneNumber: 'Invalid phone number',
// //         invalidName: 'Invalid name',
// //         invalidSurname: 'Invalid surname',
// //         invalidDate: 'Invalid date',
// //         invalidConfirmPassword: 'Passwords do not match',
// //         invalidPositiveNumber: 'Enter a positive number',
// //       );

// //   @override
// //   AuthEmailVerificationText get authEmailVerification =>
// //       AuthEmailVerificationText(
// //         emailNotVerified: 'Your email is not verified',
// //         emailNotVerifiedMessage: 'Please verify your email first',
// //         emailVerified: 'Your Email is verified',
// //         emailVerifiedMessage: 'Your Email is verified',
// //         sendedEmailVerified: 'Send a message your email for verified link',
// //         sendedFailedEmailVerified:
// //             'Please Try Again! Not send a message your email for verified link',
// //       );

// //   @override
// //   TBLApartmentFormText get apartmentForm => TBLApartmentFormText(
// //         labelName: 'Apartment Name',
// //         hintName: 'Enter Apartment Name',
// //         labelAddress: 'Apartment Address',
// //         hintAddress: 'Enter Apartment Address',
// //         labelFloor: 'Apartment Floor',
// //         hintFloor: 'Enter Apartment Floor',
// //         labelFlats: 'Apartment Flats',
// //         hintFlats: 'Enter Apartment Flats',
// //         labelBuild: 'Apartment Build Date',
// //         hintBuild: 'Enter Apartment Build Date',
// //         labelElevator: 'Is Have Elevator?',
// //         hintElevator: 'Select Elevator Status',
// //         labelDate: 'Apartment Build Date',
// //         hintDate: 'Select Apartment Build Date',
// //       );

// //   @override
// //   AppButtonText get button => AppButtonText(
// //         login: 'Login',
// //         register: 'Register',
// //         send: 'Send',
// //         save: 'Save',
// //         forgot: 'Forgot password',
// //         registerText: 'Dont have an account? Register',
// //         loginText: 'Already have an account? Login',
// //         goToLogin: 'Go login',
// //         goToRegister: 'Go register',
// //       );
// // }
