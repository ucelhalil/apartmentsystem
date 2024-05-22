import 'package:apartment_system/index.dart';
import 'package:apptext/form.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class ApartmentCreator extends StatefulWidget {
  const ApartmentCreator({super.key});

  @override
  State<ApartmentCreator> createState() => _ApartmentCreatorState();
}

class _ApartmentCreatorState extends State<ApartmentCreator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: SizeType.hexa.size.withPaddingAll,
      width: SizeType.hepta.size * 3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: SizeType.ennea.size.radiusCircle,
      ),
      child: const Column(
        children: [
          WBoldText(
            text: apartmentCreator,
            wStyle: WTextStyle.headlineMedium,
          ),
          Divider(),
          ApartmentForm(),
        ],
      ),
    );
  }
}
