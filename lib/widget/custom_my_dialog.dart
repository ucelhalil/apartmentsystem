import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class MyDialog {
  final BuildContext context;
  final String message;
  final IconData icon;

  MyDialog.error(
    this.context, {
    required this.message,
    this.icon = Icons.error,
  });

  MyDialog.success(
    this.context, {
    required this.message,
    this.icon = Icons.check,
  });

  MyDialog.info(
    this.context, {
    required this.message,
    this.icon = Icons.info,
  });

  Future build<T>() async {
    await showDialog<T>(
      context: context,
      builder: (context) => CustomDialog(
        child: CustomMyDialog(
          message: message,
          icon: icon,
        ),
      ),
    );
  }
}

class CustomMyDialog extends StatelessWidget {
  const CustomMyDialog({super.key, required this.message, required this.icon});
  final String message;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: SizeType.hexa.size.withPaddingAll,
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: [
        Icon(
          icon,
          size: 64,
          color: Colors.red,
        ),
        WText(
          text: message,
          textAlign: TextAlign.center,
        ),
      ].spaceAroundColumn,
    );
  }
}
