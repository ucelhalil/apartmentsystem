import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class SnapshotHasNotDataWidget extends StatelessWidget {
  const SnapshotHasNotDataWidget({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.search_off_outlined,
          size: SizeType.mega.size,
        ),
        SizedBox(height: SizeType.hexa.size),
        WText(text: 'Snapshot Document has not exist: $error'),
      ],
    ).fittedBox().center();
  }
}
