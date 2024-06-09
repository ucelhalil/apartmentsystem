import 'package:apartment_system/index.dart';

final class TBLApartmentText extends IBaseLangText {
  static final TBLApartmentText _instance = TBLApartmentText._init();
  static TBLApartmentText get of => _instance;
  TBLApartmentText._init();

  String get name => text('name');
  String get nameHint => text('nameHint');
  String get address => text('address');
  String get addressHint => text('addressHint');
  String get floor => text('floor');
  String get floorHint => text('floorHint');
  String get flat => text('flat');
  String get flatHint => text('flatHint');
  String get buildDate => text('buildDate');
  String get buildDateHint => text('buildDateHint');
  String get elevator => text('elevator');
  String get haveElevator => text('have-elevator');

  @override
  String text(String code) =>
      map[langNotifier.code]?[code] ?? 'No Text for Code: $code';

  @override
  MapInLanguage get map => {
        'en': {
          'name': 'Name',
          'nameHint': 'Enter Name',
          'address': 'Address',
          'addressHint': 'Enter Address',
          'floor': 'Floor',
          'floorHint': 'Enter Floor',
          'flat': 'Flat',
          'flatHint': 'Enter Flat',
          'buildDate': 'Build Date',
          'buildDateHint': 'Enter Build Date',
          'elevator': 'Elevator',
          'have-elevator': 'Is Have Elevator',
        },
        'tr': {
          'name': 'Adı',
          'nameHint': 'Adı Giriniz',
          'address': 'Adres',
          'addressHint': 'Adres Giriniz',
          'floor': 'Kat',
          'floorHint': 'Kat Giriniz',
          'flat': 'Daire',
          'flatHint': 'Daire Giriniz',
          'buildDate': 'Yapım Tarihi',
          'buildDateHint': 'Yapım Tarihi Giriniz',
          'elevator': 'Asansör',
          'have-elevator': 'Asansör Var mı',
        },
      };
}
