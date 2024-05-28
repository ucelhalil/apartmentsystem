import 'package:apptext/apptext.dart';

final class TBLApartmentTextLang extends ITextLang {
  const TBLApartmentTextLang();
  //
  String get create => get('create');
  String get name => get('name');
  String get nameHint => get('name-hint');
  String get address => get('address');
  String get addressHint => get('address-hint');
  String get floor => get('floor');
  String get floorHint => get('floor-hint');
  String get flat => get('flat');
  String get flatHint => get('flat-hint');
  String get buildDate => get('build-date');
  String get buildDateHint => get('build-date-hint');
  String get haveElevator => get('have-elevator');
  //

  @override
  LangTypeDef get map => {
        'create': {
          LangType.en.name: 'Create Apartment',
          LangType.tr.name: 'Apartman Oluştur',
        },
        'name': {
          LangType.en.name: 'Apartment Name',
          LangType.tr.name: 'Apartman Adı',
        },
        'name-hint': {
          LangType.en.name: 'Please enter apartment name',
          LangType.tr.name: 'Lütfen apartman adını girin',
        },
        'address': {
          LangType.en.name: 'Address',
          LangType.tr.name: 'Adres',
        },
        'address-hint': {
          LangType.en.name: 'Please enter address',
          LangType.tr.name: 'Lütfen adresi girin',
        },
        'floor': {
          LangType.en.name: 'Floor',
          LangType.tr.name: 'Kat',
        },
        'floor-hint': {
          LangType.en.name: 'Please enter floor',
          LangType.tr.name: 'Lütfen katı girin',
        },
        'flat': {
          LangType.en.name: 'Flat',
          LangType.tr.name: 'Daire',
        },
        'flat-hint': {
          LangType.en.name: 'Please enter flat',
          LangType.tr.name: 'Lütfen daireyi girin',
        },
        'build-date': {
          LangType.en.name: 'Build Date',
          LangType.tr.name: 'Yapım Tarihi',
        },
        'build-date-hint': {
          LangType.en.name: 'Please enter build date',
          LangType.tr.name: 'Lütfen yapım tarihini girin',
        },
        'have-elevator': {
          LangType.en.name: 'Have Elevator',
          LangType.tr.name: 'Asansör Var',
        },
      };
}
