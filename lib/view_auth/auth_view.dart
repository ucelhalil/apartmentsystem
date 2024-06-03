import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:feautures/feautures.dart';
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
    // ---------------------
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // -------------------
      body: ColumnWithSpacing(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ---------------------
          ValueListenableBuilder(
            valueListenable: authNotifier,
            builder: (_, value, __) {
              return WIconAsset(
                path: MyAsset.login.path,
                size: SizeType.hepta.size,
              ).isVisibility(visible: value != AuthType.verified);
            },
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
                case AuthType.verified:
                  return EmailVerifiedView(notifier: authNotifier);
              }
            },
          ).withSizedBox(width: widthSize),
        ],
      ).fittedBox().center(),
    );
  }
}
