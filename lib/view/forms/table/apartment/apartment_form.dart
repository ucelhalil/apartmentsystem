import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:apptext/map/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';

part 'apartment_form_controller.dart';
part 'apartment_form_decoration.dart';
part 'apartment_form_mixin.dart';

class ApartmentForm extends StatefulWidget {
  const ApartmentForm({super.key});

  @override
  State<ApartmentForm> createState() => _ApartmentFormState();
}

class _ApartmentFormState extends State<ApartmentForm>
    with _ApartmentFormMixin, _ApartmentFormDecoration {
  @override
  Widget build(BuildContext context) {
    return CustomFormView(
      scrollController: scrollController,
      formKey: form.formKey,
      children: [
        // --- Name ---
        CustomTextFormField(
          controller: form.nameController,
          decoration: nameDecoration,
          forceField: true,
          minimumValueLenght: fieldLength,
          inputFormatters: [UpperCaseTextFormatter()],
        ),
        // --- Address ---
        CustomTextFormField(
          controller: form.addressController,
          decoration: addressDecoration,
        ),
        // --- Floor ---
        CustomTextFormField(
          controller: form.floorController,
          decoration: floorDecoration,
          forceField: true,
          validator: (value) => floorValidator(value),
          keyboardType: TextInputType.number,
        ),
        // --- Flats ---
        CustomTextFormField(
          controller: form.flatController,
          decoration: flatDecoration,
          forceField: true,
          validator: (value) => flatValidator(value),
          keyboardType: TextInputType.number,
        ),
        // --- Date ---
        CustomTextFormField(
          controller: form.dateController,
          decoration: dateDecoration(form.dateController),
          forceField: true,
          validator: (value) => dateValidator(value),
          readOnly: true,
          keyboardType: TextInputType.number,
        ),
        // --- Elevator ---
        RadioAnswerButton(
          title: const TBLApartmentTextLang().haveElevator,
          boolNotifier: form.elevatorNotifier,
        ),
        // --- Save Button ---
        CustomButton(
          onPressed: () async => await submit(),
          child: WText(text: const ButtonTextLang().save),
        ),
      ],
    );
  }
}
