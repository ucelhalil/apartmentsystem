import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class ConfirmPasswordFormField extends StatefulWidget {
  const ConfirmPasswordFormField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<ConfirmPasswordFormField> createState() =>
      _ConfirmPasswordFormFieldState();
}

class _ConfirmPasswordFormFieldState extends State<ConfirmPasswordFormField>
    with ConfirmPasswordFormFieldMixin {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isPasswordVisible,
      builder: (context, value, child) {
        return CustomTextFormField(
          controller: widget.controller,
          decoration: decoration,
          forceField: true,
          minimumValueLenght: passwordLength,
          validator: (value) => validator(value),
          obscureText: value,
        );
      },
    );
  }

  CustomFormDecoration get decoration => CustomFormDecoration(
        context,
        hintText: FormLangText.of.confirmHint,
        labelText: FormLangText.of.confirm,
        suffixIcon: suffixIcon(),
        prefixIcon: prefixIcon(),
      );

  Widget suffixIcon() => IconButton(
        icon: Icon(
          isPasswordVisible.value
              ? Icons.visibility_off_sharp
              : Icons.visibility_sharp,
        ),
        onPressed: () {
          isPasswordVisible.value = !isPasswordVisible.value;
        },
      );

  Widget prefixIcon() => WIconAsset(
        path: MyAsset.lock.path,
        size: SizeType.ennea.size,
      );

  String? validator(String? value) {
    if (value.isNullOrEmpty) return FormLangText.of.required;
    if (!value!.isValidMediumPassword) {
      return FormLangText.of.passwordValidation;
    }
    return null;
  }
}

mixin ConfirmPasswordFormFieldMixin on State<ConfirmPasswordFormField> {
  BoolNotifier isPasswordVisible = BoolNotifier(true);
}
