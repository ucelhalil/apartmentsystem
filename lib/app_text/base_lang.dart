import 'package:apartment_system/index.dart';

abstract class IBaseLangText {
  IBaseLangText();

  MapInLanguage get map;

  String text(String code);
}
