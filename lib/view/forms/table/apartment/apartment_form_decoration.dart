part of 'apartment_form.dart';

mixin _ApartmentFormDecoration on State<ApartmentForm> {
  CustomFormDecoration get nameDecoration => CustomFormDecoration(
        context,
        labelText: LangApartmentForm.labelApartmentName.text,
        hintText: LangApartmentForm.hintApartmentName.text,
      );

  CustomFormDecoration get addressDecoration => CustomFormDecoration(
        context,
        labelText: LangApartmentForm.labelApartmentAddress.text,
        hintText: LangApartmentForm.hintApartmentAddress.text,
      );

  CustomFormDecoration get floorDecoration => CustomFormDecoration(
        context,
        labelText: LangApartmentForm.labelApartmentFloor.text,
        hintText: LangApartmentForm.hintApartmentFloor.text,
      );

  CustomFormDecoration get flatDecoration => CustomFormDecoration(
        context,
        labelText: LangApartmentForm.labelApartmentFlats.text,
        hintText: LangApartmentForm.hintApartmentFlats.text,
      );

  CustomFormDecoration dateDecoration(TextEditingController controller) =>
      CustomFormDecoration(context,
          labelText: LangApartmentForm.labelApartmentDate.text,
          hintText: LangApartmentForm.hintApartmentDate.text,
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
    if (!value.positiveIntParse) return LangFormError.isNotPositiveNumber.text;

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
    if (!value.positiveIntParse) return LangFormError.isNotPositiveNumber.text;
    return null;
  }

  String? dateValidator(String? value) {
    if (value.isNullOrEmpty) return LangFormError.emptyField.text;
    if (!value.dateTimeParse) return LangFormError.isNotValidDate.text;
    return null;
  }
}
