import 'package:apartment_system/index.dart';

final class FirestoreLangText extends IBaseLangText {
  static final FirestoreLangText _instance = FirestoreLangText._init();
  static FirestoreLangText get of => _instance;
  FirestoreLangText._init();

  String get noData => text('no-data');
  String get notCreateData => text('not-create-data');
  String get processError => text('process-error');
  String get processFailed => text('process-failed');

  @override
  String text(String code) =>
      map[langNotifier.code]?[code] ?? 'No Text for Code: $code';

  @override
  MapInLanguage get map => {
        'en': {
          'no-data': 'No Data',
          'not-create-data': 'Not Create Data',
          'process-error': 'Process Error',
          'process-failed': 'Process Failed',
        },
        'tr': {
          'no-data': 'Veri Yok',
          'not-create-data': 'Veri Oluşturulamadı',
          'process-error': 'İşlem Hatası',
          'process-failed': 'İşlem Başarısız',
        },
      };
}
