import 'package:apartment_system/firebase/firestore/firestore_count.dart';
import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

part 'home_appbar.dart';
part 'home_body.dart';
part 'home_drawer.dart';
part 'home_float_button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with _HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    // ------------------------
    return Scaffold(
      key: ViewScaffoldKey.homeView,
      appBar: const _HomeAppBar(),
      drawer: const _HomeViewDrawer(),
      body: const _HomeViewBody().padding(
        pad: SizeType.hexa.size.withPaddingAll,
      ),
      floatingActionButton: const _HomeFloatingButton(),
    );
  }
}

// Suggested code may be subject to a license. Learn more: ~LicenseLog:1735542490.
mixin _HomeViewMixin on State<HomeView> {
  @override
  void initState() {
    super.initState();
    user;
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> get user async {
    await AuthUser.of.getUserData();
  }
}
