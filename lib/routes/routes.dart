import 'package:codeofland/codeofland.dart';
import 'package:flutter/material.dart';

import '../index.dart';

final class AppRoute extends IRoute {
  AppRoute();

  @override
  Map<String, Widget Function(BuildContext context)> get route => {
        MyRoute.splash.name: (_) => const SplashView(),
        MyRoute.auth.name: (_) => const AuthView(),
        MyRoute.home.name: (_) => const HomeView(),
      };
}
