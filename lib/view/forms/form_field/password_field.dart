import 'package:apartment_system/index.dart';
import 'package:apptext/apptext.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField>
    with PasswordFormFieldMixin {
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
        hintText: hintPassword,
        labelText: labelPassword,
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
    if (value.isNullOrEmpty) return emptyField;
    if (!value!.isValidMediumPassword) return isNotValidPassword;
    return null;
  }
}

mixin PasswordFormFieldMixin on State<PasswordFormField> {
  BoolNotifier isPasswordVisible = BoolNotifier(true);
}
