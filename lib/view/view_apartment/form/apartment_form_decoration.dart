part of 'apartment_form.dart';

mixin _ApartmentFormDecoration on State<ApartmentForm> {
  //
  CustomFormDecoration get nameDecoration => CustomFormDecoration(
        context,
        labelText: TBLApartmentText.of.name,
        hintText: TBLApartmentText.of.nameHint,
      );

  CustomFormDecoration get addressDecoration => CustomFormDecoration(
        context,
        labelText: TBLApartmentText.of.address,
        hintText: TBLApartmentText.of.addressHint,
      );

  CustomFormDecoration get floorDecoration => CustomFormDecoration(
        context,
        labelText: TBLApartmentText.of.floor,
        hintText: TBLApartmentText.of.floorHint,
      );

  CustomFormDecoration get flatDecoration => CustomFormDecoration(
        context,
        labelText: TBLApartmentText.of.flat,
        hintText: TBLApartmentText.of.flatHint,
      );

  CustomFormDecoration dateDecoration(TextEditingController controller) =>
      CustomFormDecoration(context,
          labelText: TBLApartmentText.of.buildDate,
          hintText: TBLApartmentText.of.buildDateHint,
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
    if (!value.positiveIntParse) return FormLangText.of.numberIsNotPositive;
    return null;
  }

  String? flatValidator(String? value) {
    if (!value.positiveIntParse) return FormLangText.of.numberIsNotPositive;
    return null;
  }

  String? dateValidator(String? value) {
    if (value.isNullOrEmpty) return FormLangText.of.required;
    if (!value.dateTimeParse) return FormLangText.of.valueMustDate;
    return null;
  }
}
