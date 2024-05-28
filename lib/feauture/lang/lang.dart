typedef LangTypeDef = Map<String, Map<String, String>>;

final class AppLang {
  static const LangTypeDef button = {
    'buttonSave': {
      'tr': 'Kaydet',
      'en': 'Save',
    },
    'buttonSend': {
      'tr': 'Gönder',
      'en': 'Send',
    },
    'buttonCancel': {
      'tr': 'İptal',
      'en': 'Cancel',
    },
    'buttonDelete': {
      'tr': 'Sil',
      'en': 'Delete',
    },
    'buttonEdit': {
      'tr': 'Düzenle',
      'en': 'Edit',
    },
    'buttonAdd': {
      'tr': 'Ekle',
      'en': 'Add',
    },
    'goToLogin': {
      'tr': 'Giriş Yap',
      'en': 'Login',
    },
    'goToRegister': {
      'tr': 'Kayıt Ol',
      'en': 'Register',
    },
    'goToForgot': {
      'tr': 'Şifremi Unuttum',
      'en': 'Forgot Password',
    },
    'registerText': {
      'tr': 'Hesabınız yok mu? Kayıt olun.',
      'en': 'Don\'t have an account? Register.',
    },
    'loginText': {
      'tr': 'Hesabınız var mı? Giriş yapın.',
      'en': 'Do you have an account? Login.',
    },
    'forgotText': {
      'tr': 'Şifrenizi mi unuttunuz?',
      'en': 'Forgot your password?',
    },
  };

  static const LangTypeDef drawer = {
    'homeSection': {
      'tr': 'Anasayfa',
      'en': 'Home',
    },
  };

  static const LangTypeDef emailVerified = {
    'emailVerified': {
      'tr': 'E-posta doğrulandı.',
      'en': 'Email verified.',
    },
    'sendedFailedEmailVerified': {
      'tr': 'E-posta doğrulama gönderilemedi.',
      'en': 'Email verification failed to send.',
    },
    'sendedEmailVerified': {
      'tr': 'E-posta doğrulama gönderildi.',
      'en': 'Email verification sent.',
    },
  };

  static const LangTypeDef material = {
    'materialAppTitle': {
      'tr': 'Apartman Sistemi',
      'en': 'Apartment System',
    },
  };

  static const LangTypeDef apartmentForm = {
    'apartmentCreator': {
      'tr': 'Apartman Oluştur',
      'en': 'Apartment Create',
    },
    'labelApartmentName': {
      'tr': 'Apartman Adı',
      'en': 'Apartment Name',
    },
    'hintApartmentName': {
      'tr': 'Apartman adını giriniz.',
      'en': 'Enter the apartment name.',
    },
    'labelApartmentAddress': {
      'tr': 'Apartman Adresi',
      'en': 'Apartment Address',
    },
    'hintApartmentAddress': {
      'tr': 'Apartman adresini giriniz.',
      'en': 'Enter the apartment address.',
    },
    'labelApartmentFloor': {
      'tr': 'Apartman Kat Sayısı',
      'en': 'Apartment Floor Count',
    },
    'hintApartmentFloor': {
      'tr': 'Apartman kat sayısını giriniz.',
      'en': 'Enter the apartment floor count.',
    },
    'labelApartmentFlats': {
      'tr': 'Apartman Daire Sayısı',
      'en': 'Apartment Flat Count',
    },
    'hintApartmentFlats': {
      'tr': 'Apartman daire sayısını giriniz.',
      'en': 'Enter the apartment flat count.',
    },
    'labelApartmentDate': {
      'tr': 'Apartman Kuruluş Tarihi',
      'en': 'Apartment Establishment Date',
    },
    'hintApartmentDate': {
      'tr': 'Apartman kuruluş tarihini giriniz.',
      'en': 'Enter the apartment establishment date.',
    },
    'haveAnElevator': {
      'tr': 'Asansör var mı?',
      'en': 'Is there an elevator?',
    },
  };

  static const LangTypeDef forgotForm = {
    'isNotFormValidate': {
      'tr': 'Formu doğru bir şekilde doldurunuz.',
      'en': 'Fill out the form correctly.',
    },
  };

  static const LangTypeDef formField = {
    'emailLabel': {
      'tr': 'E-posta',
      'en': 'Email',
    },
    'emailHint': {
      'tr': 'E-posta adresinizi giriniz.',
      'en': 'Enter your email address.',
    },
    'passwordLabel': {
      'tr': 'Şifre',
      'en': 'Password',
    },
    'passwordHint': {
      'tr': 'Şifrenizi giriniz.',
      'en': 'Enter your password.',
    },
    'confirmPasswordLabel': {
      'tr': 'Şifre Tekrarı',
      'en': 'Password Confirmation',
    },
    'confirmPasswordHint': {
      'tr': 'Şifrenizi tekrar giriniz.',
      'en': 'Enter your password again.',
    },
    'nameLabel': {
      'tr': 'Adınız',
      'en': 'Name',
    },
    'nameHint': {
      'tr': 'Adınızı giriniz.',
      'en': 'Enter your name.',
    },
    'phoneLabel': {
      'tr': 'Telefon Numaranız',
      'en': 'Phone Number',
    },
    'phoneHint': {
      'tr': 'Telefon numaranızı giriniz.',
      'en': 'Enter your phone number.',
    },
  };

  static const LangTypeDef formError = {
    'isNotFormValidate': {
      'tr': 'Formu doğru bir şekilde doldurunuz.',
      'en': 'Fill out the form correctly.',
    },
    'isNotConfirmPassword': {
      'tr': 'Şifreler uyuşmuyor.',
      'en': 'Passwords do not match.',
    },
    'required': {
      'tr': 'Bu alan boş bırakılamaz.',
      'en': 'This field cannot be left blank.',
    },
    'email': {
      'tr': 'Geçerli bir e-posta adresi giriniz.',
      'en': 'Enter a valid email address.',
    },
    'isNotValidEmail': {
      'tr': 'Bu alan geçerli bir e-posta adresi olmalıdır.',
      'en': 'This field must be a valid email address.',
    },
    'minLength': {
      'tr': 'Bu alan en az 6 karakter olmalıdır.',
      'en': 'This field must be at least 6 characters.',
    },
    'maxLength': {
      'tr': 'Bu alan en fazla 12 karakter olmalıdır.',
      'en': 'This field must be at most 12 characters.',
    },
    'passwordNotMatch': {
      'tr': 'Şifreler uyuşmuyor.',
      'en': 'Passwords do not match.',
    },
    'isNotValidPassword': {
      'tr': 'Bu alan geçerli bir şifre olmalıdır.',
      'en': 'This field must be a valid password.',
    },
    'isNotPositiveNumber': {
      'tr': 'Bu alan pozitif bir sayı olmalıdır.',
      'en': 'This field must be a positive number.',
    },
    'isNotNumber': {
      'tr': 'Bu alan bir sayı olmalıdır.',
      'en': 'This field must be a number.',
    },
    'isNotDate': {
      'tr': 'Bu alan bir tarih olmalıdır.',
      'en': 'This field must be a date.',
    },
    'emptyField': {
      'tr': 'Bu alan boş bırakılamaz.',
      'en': 'This field cannot be left blank.',
    },
    'isNotValidDate': {
      'tr': 'Bu alan geçerli bir tarih olmalıdır.',
      'en': 'This field must be a valid date.',
    },
  };

  static const LangTypeDef firebaseException = {
    'invalid-email': {
      'tr': 'Geçersiz e-posta adresi.',
      'en': 'Invalid email address.',
    },
    'missing-android-pkg-name': {
      'tr': 'Android paket adı eksik.',
      'en': 'Missing Android package name.',
    },
    'missing-continue-uri': {
      'tr': 'Devam URI\'si eksik.',
      'en': 'Missing continue URI.',
    },
    'missing-ios-bundle-id': {
      'tr': 'IOS paket adı eksik.',
      'en': 'Missing IOS bundle ID.',
    },
    'invalid-continue-uri': {
      'tr': 'Geçersiz devam URI\'si.',
      'en': 'Invalid continue URI.',
    },
    'unauthorized-continue-uri': {
      'tr': 'Yetkisiz devam URI\'si.',
      'en': 'Unauthorized continue URI.',
    },
    'user-not-found': {
      'tr': 'Kullanıcı bulunamadı.',
      'en': 'User not found.',
    },
    'user-disabled': {
      'tr': 'Kullanıcı devre dışı bırakıldı.',
      'en': 'User disabled.',
    },
    'wrong-password': {
      'tr': 'Yanlış şifre.',
      'en': 'Wrong password.',
    },
    'user-mismatch': {
      'tr': 'Kullanıcı uyuşmuyor.',
      'en': 'User mismatch.',
    },
    'invalid-credential': {
      'tr': 'Geçersiz kimlik bilgisi.',
      'en': 'Invalid credential.',
    },
    'invalid-verification-code': {
      'tr': 'Geçersiz doğrulama kodu.',
      'en': 'Invalid verification code.',
    },
    'invalid-verification-id': {
      'tr': 'Geçersiz doğrulama kimliği.',
      'en': 'Invalid verification ID.',
    },
    'invalid-phone-number': {
      'tr': 'Geçersiz telefon numarası.',
      'en': 'Invalid phone number.',
    },
    'weak-password': {
      'tr': 'Zayıf şifre.',
      'en': 'Weak password.',
    },
    'email-already-in-use': {
      'tr': 'E-posta adresi zaten kullanımda.',
      'en': 'Email already in use.',
    },
  };
}
