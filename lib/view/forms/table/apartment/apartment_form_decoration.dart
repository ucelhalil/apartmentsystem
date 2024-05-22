part of 'apartment_form.dart';

mixin _ApartmentFormDecoration on State<ApartmentForm> {
  CustomFormDecoration get nameDecoration => CustomFormDecoration(
        context,
        labelText: labelApartmentName,
        hintText: hintApartmentName,
      );

  CustomFormDecoration get addressDecoration => CustomFormDecoration(
        context,
        labelText: labelApartmentAddress,
        hintText: hintApartmentAddress,
      );

  CustomFormDecoration get floorDecoration => CustomFormDecoration(
        context,
        labelText: labelApartmentFloor,
        hintText: hintApartmentFloor,
      );

  CustomFormDecoration get flatDecoration => CustomFormDecoration(
        context,
        labelText: labelApartmentFlats,
        hintText: hintApartmentFlats,
      );

  CustomFormDecoration dateDecoration(TextEditingController controller) =>
      CustomFormDecoration(context,
          labelText: labelApartmentDate,
          hintText: hintApartmentDate,
          prefixIcon: datePrefixIcon(controller));

  Widget datePrefixIcon(TextEditingController controller) {
    return IconButton(
      onPressed: () async {
        final value = await showDatePicker(
            context: context, firstDate: minimumDate, lastDate: maximumDate);
        if (value == null) return;
        controller.text = value.toIso8601String();
      },
      icon: const Icon(Icons.calendar_month),
    );
  }

  String? floorValidator(String? value) {
    if (!value.positiveIntParse) return isNotPositiveNumber;

    return null;
  }

  // Future<bool> get isApartmentCount async {
  //   final user = await FirestoreUserData.of.fireUser;
  //   if (user == null) return false;
  //   if (user.apartment == null) return false;
  //   if (user.apartment! > await FirestoreCount<TBLApartment>().count()) {
  //     return false;
  //   }
  // }

  String? flatValidator(String? value) {
    if (!value.positiveIntParse) return isNotPositiveNumber;
    return null;
  }

  String? dateValidator(String? value) {
    if (value.isNullOrEmpty) return emptyField;
    if (!value.dateTimeParse) return isNotValidDate;
    return null;
  }
}
