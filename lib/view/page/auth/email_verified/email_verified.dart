import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';

part 'email_verified_mixin.dart';

class EmailVerifiedView extends StatefulWidget {
  const EmailVerifiedView({super.key, required this.notifier});

  final AuthNotifier notifier;

  @override
  State<EmailVerifiedView> createState() => _EmailVerifiedViewState();
}

class _EmailVerifiedViewState extends State<EmailVerifiedView>
    with EmailVericationMixin {
  @override
  Widget build(BuildContext context) {
    return ColumnWithSpacing(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WIconAsset(
          path: MyAsset.emailVerified.path,
          size: SizeType.teta.size,
        ),
        // ---------------------
        WText(
          text: const FormErrorTextLang().emailVerified,
          wStyle: WTextStyle.headlineSmall,
        ),
        // ---------------------
        ValueListenableBuilder(
          valueListenable: isSended,
          builder: (context, value, child) {
            if (value == FutureType.loading) {
              return const ConnectionWaiting();
            } else if (value == FutureType.error) {
              return WText(
                text: const FormErrorTextLang().sendedEmailFail,
                wStyle: WTextStyle.headlineSmall,
              );
            } else {
              return WText(
                text: const FormErrorTextLang().sendedEmail,
                wStyle: WTextStyle.headlineSmall,
              );
            }
          },
        ),
        // ---------------------
        CustomButton.small(
          onPressed: goToLogin,
          child: WText(
            text: const ButtonTextLang().login,
          ),
        ),
      ],
    ).fittedBox().center();
  }
}
