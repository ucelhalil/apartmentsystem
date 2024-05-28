import 'package:apartment_system/index.dart';

enum LangEmailVerified {
  emailVerified,
  sendedFailedEmailVerified,
  sendedEmailVerified,
  ;

  String get text =>
      AppLang.emailVerified[name]?[langNotifier.value.name] ?? '';
}
