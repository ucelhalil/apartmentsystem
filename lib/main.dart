import 'package:apptext/apptext.dart';
import 'package:flutter/material.dart';
import 'index.dart';

Future<void> main() async {
  await MainStarter.init();
  // ---------------------
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: const AppTextLang().materialTitle,
      theme: LightTheme().theme,
      routes: AppRoute().route,
      initialRoute: MyRoute.splash.name,
    );
  }
}
// ---------------------
// Change Master