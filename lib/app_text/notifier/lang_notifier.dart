import 'package:codeofland/codeofland.dart';
import 'package:flutter/foundation.dart';

LangNotifier langNotifier = LangNotifier(LangType.tr);

class LangNotifier extends ValueNotifier<LangType> {
  LangNotifier(super.value);

  String get code => value == LangType.tr ? 'tr' : 'en';

  void get setTR {
    value = LangType.tr;
    notifyListeners();
  }

  void get setEN {
    value = LangType.en;
    notifyListeners();
  }
}
