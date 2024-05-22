import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 150,
    this.height = 45,
  });

  const CustomButton.small({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 120,
    this.height = 40,
  });

  const CustomButton.medium({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 200,
    this.height = 50,
  });

  const CustomButton.large({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 300,
    this.height = 60,
  });

  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: SizeType.hexa.size.radiusCircle,
          side: BorderSide(
            color: context.colorScheme.onBackground,
            width: 1,
          ),
        ),
      ),
      child: child,
    );
  }
}
