import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class ModuleCard extends StatelessWidget {
  const ModuleCard({
    super.key,
    required this.path,
    required this.title,
    required this.route,
  });

  final String path;
  final String title;
  final MyRoute route;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: [
        WIconAsset(
          path: path,
          size: 128,
        ),
        CustomButton.medium(
          onPressed: () => context.pushNamed(route.name),
          child: WText(text: title),
        ),
      ].spaceAroundColumn.withSizedBox(
            height: SizeType.teta.size,
            width: SizeType.teta.size,
          ),
    );
  }
}
