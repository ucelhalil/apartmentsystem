import 'package:apptext/apptext.dart';

abstract class ITextLang {
  const ITextLang();

  LangTypeDef get map;

  String get(String key) => map[key]?[langNotifier.value.name] ?? '';
}
