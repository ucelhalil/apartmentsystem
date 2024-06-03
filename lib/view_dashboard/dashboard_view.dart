import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        automaticallyImplyLeading: false,
      ),
      body: const ModuleCardList(),
    );
  }
}

class ModuleCardList extends StatelessWidget {
  const ModuleCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        ModuleCard(
          path: MyAsset.apartment.path,
          title: 'Apartment',
          route: MyRoute.apartment,
        ),
        ModuleCard(
          path: MyAsset.home.path,
          title: 'Flat',
          route: MyRoute.flat,
        ),
      ],
    ).padding(pad: SizeType.hexa.size.withPaddingAll);
  }
}
