import 'package:apartment_system/index.dart';

enum LangMaterial {
  materialAppTitle,
  ;

  String get text => AppLang.material[name]?[langNotifier.value.name] ?? '';
}
