// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAelBTlImhTMRe7TTnVstyEH4yPuKeStzQ',
    appId: '1:246928479035:web:68d4d1045ee1d913295d1e',
    messagingSenderId: '246928479035',
    projectId: 'apartment-systems',
    authDomain: 'apartment-systems.firebaseapp.com',
    storageBucket: 'apartment-systems.appspot.com',
    measurementId: 'G-48BNGWSBS2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDK0bmg8I9HhTdFQn0Uvc-ke84TQn4Wu1U',
    appId: '1:246928479035:android:4b12938f27818cf6295d1e',
    messagingSenderId: '246928479035',
    projectId: 'apartment-systems',
    storageBucket: 'apartment-systems.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCbXI9tzAw347Cc-_hxRiqmDF6OEc3YXk',
    appId: '1:246928479035:ios:e0a994dcf5795a59295d1e',
    messagingSenderId: '246928479035',
    projectId: 'apartment-systems',
    storageBucket: 'apartment-systems.appspot.com',
    iosBundleId: 'com.example.apartmentSystem',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDCbXI9tzAw347Cc-_hxRiqmDF6OEc3YXk',
    appId: '1:246928479035:ios:e0a994dcf5795a59295d1e',
    messagingSenderId: '246928479035',
    projectId: 'apartment-systems',
    storageBucket: 'apartment-systems.appspot.com',
    iosBundleId: 'com.example.apartmentSystem',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAelBTlImhTMRe7TTnVstyEH4yPuKeStzQ',
    appId: '1:246928479035:web:a3dd251d8aac2d4d295d1e',
    messagingSenderId: '246928479035',
    projectId: 'apartment-systems',
    authDomain: 'apartment-systems.firebaseapp.com',
    storageBucket: 'apartment-systems.appspot.com',
    measurementId: 'G-X67VGGR9S4',
  );
}
