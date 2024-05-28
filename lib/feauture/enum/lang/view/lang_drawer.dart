import 'package:apartment_system/index.dart';

enum LangDrawer {
  homeSection,
  ;

  String get text => AppLang.drawer[name]?[langNotifier.value.name] ?? '';
}
