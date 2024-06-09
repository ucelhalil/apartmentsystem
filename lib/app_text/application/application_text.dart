import 'package:apartment_system/index.dart';

final class ApplicationLangText extends IBaseLangText {
  static final ApplicationLangText _instance = ApplicationLangText._init();
  static ApplicationLangText get of => _instance;
  ApplicationLangText._init();

  String get title => text('title');

  @override
  String text(String code) =>
      map[langNotifier.code]?[code] ?? 'No Text for Code: $code';

  @override
  MapInLanguage get map => {
        'en': {
          'title': 'Apartment System',
        },
        'tr': {
          'title': 'Apartman Sistemi',
        },
      };
}
