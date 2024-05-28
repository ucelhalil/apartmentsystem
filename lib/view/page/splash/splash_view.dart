import 'dart:async';

import 'package:apartment_system/index.dart';
import 'package:apptext/title.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

part 'splash_mixin.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with _SplashViewMixin {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      body: SizedBox(
        width: context.sizeOf.width * 0.6,
        height: context.sizeOf.height * 0.6,
        // ---  ---
        child: TweenAnimationBuilder(
          tween: tween,
          duration: tweenDuration,
          builder: (context, size, child) {
            //
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //
              children: [
                AnimatedContainer(
                  duration: logoDuration,
                  width: size * logoSize,
                  height: size * logoSize,
                  //
                  child: WIconAsset(
                    path: MyAsset.apartment.path,
                  ),
                ),

                //
                AnimatedContainer(
                  duration: textDuration,
                  width: size * textSize,
                  height: textHeight,
                  //
                  child: const WBoldText(
                    textAlign: TextAlign.center,
                    text: applicationTitle,
                    maxLines: 2,
                    wStyle: WTextStyle.headlineMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                //
              ],
            ).fittedBox();
          },
        ),
      ).fittedBox().center(),
    );
  }
}
