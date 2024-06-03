import 'package:apptext/apptext.dart';
import 'package:flutter/foundation.dart';

LangNotifier langNotifier = LangNotifier(LangType.tr);

class LangNotifier extends ValueNotifier<LangType> {
  LangNotifier(super.value);

  void get setTR {
    value = LangType.tr;
    notifyListeners();
  }

  void get setEN {
    value = LangType.en;
    notifyListeners();
  }
}
