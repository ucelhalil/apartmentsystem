import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class EmailNotVerifiedView extends StatelessWidget {
  const EmailNotVerifiedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColumnWithSpacing(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WIconAsset(
            path: MyAsset.emailVerified.path,
            size: SizeType.teta.size,
          ),
          const WText(
            text: emailNotVerified,
            wStyle: WTextStyle.headlineSmall,
          ),
          const WText(
            text: emailNotVerifiedMessage,
            wStyle: WTextStyle.bodyLarge,
          ),
          CustomButton.small(
            onPressed: () => context.pushNamed(MyRoute.auth.name),
            child: const WText(
              text: goToLoginButton,
            ),
          ),
        ],
      ).fittedBox().center(),
    );
  }
}
