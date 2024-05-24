import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
// import 'package:apptext/apptext.dart';
// import 'package:codeofland/codeofland.dart';
// import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

part 'email_verified_mixin.dart';

class EmailNotVerifiedView extends StatefulWidget {
  const EmailNotVerifiedView({super.key});

  @override
  State<EmailNotVerifiedView> createState() => _EmailNotVerifiedViewState();
}

class _EmailNotVerifiedViewState extends State<EmailNotVerifiedView>  with EmailVericationMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(valueListenable: isSended, builder: (context, value, child) {
        switch (value) {
          case FutureType.success:
            return const _EmailSended();
          case FutureType.error:
            return const _EmailNotSended();
          default: 
            return const ConnectionWaiting().fittedBox().center();
        }
      },),
    );
    
  }
}

class _EmailSended extends StatelessWidget {
  const _EmailSended();

  @override
  Widget build(BuildContext context) {
    return ColumnWithSpacing(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WIconAsset(path: MyAsset.emailVerified.path,
        size: SizeType.teta.size,
        ),
        const WText(
          text: emailNotVerified,
          wStyle: WTextStyle.headlineSmall,
        ),
        const WText(
          text: sendedEmailVerified,
          wStyle: WTextStyle.bodyLarge,
        ),
        CustomButton.small(
          onPressed: () => context.pushNamed(MyRoute.auth.name),
          child: const WText(
            text: goToLoginButton,
          ),
        ),
      ],
    ).fittedBox().center();
  }
}

class _EmailNotSended extends StatelessWidget {
  const _EmailNotSended();

  @override
  Widget build(BuildContext context) {
    return ColumnWithSpacing(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        WIconAsset(path: MyAsset.emailVerified.path,
        size: SizeType.teta.size,
        ),
        const WText(
          text: emailNotVerified,
          wStyle: WTextStyle.headlineSmall,
        ),
        const WText(
          text: sendedFailedEmailVerified,
          wStyle: WTextStyle.bodyLarge,
        ),
        CustomButton.small(
          onPressed: () => context.pushNamed(MyRoute.auth.name),
          child: const WText(
            text: goToLoginButton,
          ),
        ),
      ],
    ).fittedBox().center();
  }
}

