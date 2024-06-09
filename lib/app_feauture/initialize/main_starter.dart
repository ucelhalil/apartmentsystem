
import 'package:apartment_system/index.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

@immutable
final class MainStarter {
  const MainStarter._();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    //
    await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  }
}