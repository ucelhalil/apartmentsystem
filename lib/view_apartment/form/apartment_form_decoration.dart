part of 'apartment_form.dart';

mixin _ApartmentFormDecoration on State<ApartmentForm> {
  TBLApartmentTextLang get lang => const TBLApartmentTextLang();
  //
  CustomFormDecoration get nameDecoration => CustomFormDecoration(
        context,
        labelText: lang.name,
        hintText: lang.nameHint,
      );

  CustomFormDecoration get addressDecoration => CustomFormDecoration(
        context,
        labelText: lang.address,
        hintText: lang.addressHint,
      );

  CustomFormDecoration get floorDecoration => CustomFormDecoration(
        context,
        labelText: lang.floor,
        hintText: lang.floorHint,
      );

  CustomFormDecoration get flatDecoration => CustomFormDecoration(
        context,
        labelText: lang.flat,
        hintText: lang.flatHint,
      );

  CustomFormDecoration dateDecoration(TextEditingController controller) =>
      CustomFormDecoration(context,
          labelText: lang.buildDate,
          hintText: lang.buildDateHint,
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
    if (!value.positiveIntParse) return const FormErrorTextLang().isPositive;
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
    if (!value.positiveIntParse) return const FormErrorTextLang().isPositive;
    return null;
  }

  String? dateValidator(String? value) {
    if (value.isNullOrEmpty) return const FormErrorTextLang().required;
    if (!value.dateTimeParse) return const FormErrorTextLang().isDateTime;
    return null;
  }
}
