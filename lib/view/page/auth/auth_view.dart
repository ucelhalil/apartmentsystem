import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

part 'auth_view_mixin.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> with _AuthViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColumnWithSpacing(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ---------------------
          WIconAsset(
            path: MyAsset.login.path,
            size: SizeType.hepta.size,
          ),
          // ---------------------
          // ---------------------
          ValueListenableBuilder(
            valueListenable: authNotifier,
            builder: (context, value, child) {
              // ---------------------
              switch (value) {
                case AuthType.signin:
                  return LoginForm(notifier: authNotifier);
                case AuthType.signup:
                  return RegisterForm(notifier: authNotifier);
                case AuthType.forgot:
                  return ForgotForm(notifier: authNotifier);
              }
            },
          ).withSizedBox(width: SizeType.hepta.size * 3),
        ],
      ).fittedBox().center(),
    );
  }
}
