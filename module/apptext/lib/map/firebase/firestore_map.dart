import 'package:apptext/apptext.dart';

class FirebaseFirestoreLang extends ITextLang {
  @override
  LangTypeDef get map => {
        'unknown-error': {
          LangType.tr.name: 'Bilinmeyen hata.',
          LangType.en.name: 'Unknown error.',
        },
        'cancelled': {
          LangType.tr.name: 'İptal edildi.',
          LangType.en.name: 'Cancelled.',
        },
        'empty-data': {
          LangType.tr.name: 'Boş veri.',
          LangType.en.name: 'Empty data.',
        },
        'not-found-data': {
          LangType.tr.name: 'Veri bulunamadı.',
          LangType.en.name: 'Data not found.',
        },
      };
}
