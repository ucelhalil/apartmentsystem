import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with _CustomAppBarMixin {
  const CustomAppBar({super.key, this.leading, this.title, this.actions, this.height,});

  final Widget? leading;
  final Widget? title;
  final Widget? actions;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height ?? kToolbarHeight,
      decoration: _boxDecoration(context),
      // -------------
      child: Row(
        children: [
          leading ?? const SizedBox.shrink(),
          const Spacer(),
          title ?? const SizedBox.shrink(),
          const Spacer(),
          actions ?? const SizedBox.shrink(), 
        ],
      ),
    );
  }
}

mixin _CustomAppBarMixin on StatelessWidget {

  BoxDecoration _boxDecoration(BuildContext context) {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1223757102.
    return BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
      borderRadius: SizeType.hexa.size.radiusCircleOnlyBottom,
      );
  }
}
