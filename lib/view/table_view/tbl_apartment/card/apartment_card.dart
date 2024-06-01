import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:feautures/feautures.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'card_design_mixin.dart';
part 'card_function_mixin.dart';

class ApartmentCard extends StatelessWidget
    with ApartmentDesignMixin, ApartmentCardFunction {
  const ApartmentCard({super.key, required this.apartment});

  final TBLApartment apartment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: boxDecoration(context),
      // ------------------------
      child: [
        SizeType.hexa.size.heightBox,
        // ------------------------
        [
          IconButton(
            onPressed: () => favorite(apartment),
            icon: const Icon(Icons.favorite),
            color: Colors.red,
          ),
          // ------------------------
          const Icon(
            Icons.menu_open_rounded,
            color: Colors.blue,
          ),
        ].spaceAroundRow,
        // ------------------------
        WIconAsset(
          path: MyAsset.apartment.path,
          size: SizeType.hepta.size,
        ).expanded(),
        // ------------------------

        Container(
          height: titleHeight,
          width: width,
          decoration: titleDecoration(context),
          child: WText(
            text: apartment.name.toString(),
          ).center(),
        ),
        // ------------------------
      ].spaceAroundColumn,
    );
  }
}
