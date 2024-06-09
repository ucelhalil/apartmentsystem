
import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class RadioAnswerButton extends StatelessWidget {
  const RadioAnswerButton(
      {super.key, required this.title, required this.boolNotifier});

  final String title;
  final BoolNotifier boolNotifier;

  @override
  Widget build(BuildContext context) {
    //
    return ColumnWithSpacing(
      children: [
        WText(
          text: title,
          wStyle: WTextStyle.titleMedium,
        ),
        // --- Radio Button ---
        ValueListenableBuilder(
          valueListenable: boolNotifier,
          builder: (context, notifier, child) {
            return [
              [
                Radio<bool>(
                  value: true,
                  groupValue: boolNotifier.value,
                  onChanged: (value) => boolNotifier.setTrue(),
                ),
                const WText(text: 'Evet'),
              ].row,
              [
                Radio(
                  value: false,
                  groupValue: boolNotifier.value,
                  onChanged: (value) => boolNotifier.setFalse(),
                ),
                const WText(text: 'Hayır'),
              ].row,
            ].spaceAroundRow;
          },
        ),
      ],
    );
  }
}
