import 'package:apartment_system/index.dart';

enum LangApartmentForm {
  apartmentCreator,
  labelApartmentName,
  hintApartmentName,
  labelApartmentAddress,
  hintApartmentAddress,
  labelApartmentFloor,
  hintApartmentFloor,
  labelApartmentFlats,
  hintApartmentFlats,
  labelApartmentDate,
  hintApartmentDate,
  haveAnElevator,
  ;

  String get text =>
      AppLang.apartmentForm[name]?[langNotifier.value.name] ?? '';
}
