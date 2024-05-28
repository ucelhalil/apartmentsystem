import 'package:apptext/apptext.dart';

final class AppTextLang extends ITextLang {
  const AppTextLang();

  String get materialTitle => get('material-title');

  @override
  LangTypeDef get map => {
        'material-title': {
          LangType.en.name: 'Apartment Management System',
          LangType.tr.name: 'Apartman Yönetim Sistemi',
        },
      };
}
