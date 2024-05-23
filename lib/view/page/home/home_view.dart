import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

part 'home_float_button.dart';
part 'home_drawer.dart';
part 'home_appbar.dart';

class HomeView extends StatelessWidget with _HomeViewMixin {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // ------------------------
    getUserData();
    // ------------------------
    return Scaffold(
      key:ViewScaffoldKey.homeView,
      appBar:  const _HomeAppBar(),
      drawer: const _HomeViewDrawer(),
      body: const ApartmentList(),
      floatingActionButton: const _HomeFloatingButton(),
    );
  }
}

mixin _HomeViewMixin {
  Future<void> getUserData() async {
    return MyObjectNotifier.of.fireUser.getFireUser();
  }
}
