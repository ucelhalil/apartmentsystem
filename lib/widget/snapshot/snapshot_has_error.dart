import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class SnapshotHasErrorWidget extends StatelessWidget {
  const SnapshotHasErrorWidget({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error_outline,
          size: SizeType.mega.size,
        ),
        SizedBox(height: SizeType.hexa.size),
        WText(text: 'Snapshot Error: $error'),
      ],
    ).fittedBox().center();
  }
}
