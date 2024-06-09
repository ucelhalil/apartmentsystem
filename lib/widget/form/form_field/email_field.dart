import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class EmailFormField extends StatefulWidget {
  const EmailFormField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<EmailFormField> createState() => _EmailFormFieldState();
}

class _EmailFormFieldState extends State<EmailFormField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: widget.controller,
      decoration: decoration,
      forceField: true,
      minimumValueLenght: fieldLength,
      validator: (value) => emailValidator(value),
    );
  }

  CustomFormDecoration get decoration => CustomFormDecoration(
        context,
        labelText: const FormTextLang().email,
        hintText: const FormTextLang().emailHint,
        prefixIcon: prefixIcon(),
      );

  String? emailValidator(String? value) {
    if (value.isNullOrEmpty) return const FormErrorTextLang().required;
    if (!value!.isValidEmailRegex) {
      return const FormErrorTextLang().emailValidation;
    }
    return null;
  }

  Widget prefixIcon() => WIconAsset(
        path: MyAsset.email.path,
        size: SizeType.ennea.size,
      );
}
