import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

final class CustomTextFormField extends TextFormField {
  CustomTextFormField({
    super.key,
    super.readOnly,
    super.controller,
    String? Function(String?)? validator,
    super.obscureText,
    super.decoration,
    bool forceField = false,
    int minimumValueLenght = 0,
    super.inputFormatters,
    super.keyboardType,
  }) : super(
          validator: (value) {
            if (forceField || minimumValueLenght > 0) {
              if (value.isNullOrEmpty) return 'Bu alan boş bırakılamaz';
              if (value!.length < minimumValueLenght) {
                return 'Bu alan en az $minimumValueLenght karakter olmalıdır';
              }
            }
            //--------------------------------
            if (validator != null) {
              return validator(value);
            }
            return null;
            //--------------------------------
          },
        );
}

class CustomFormDecoration extends InputDecoration {
  CustomFormDecoration(
    BuildContext context, {
    super.labelText,
    super.hintText,
    Widget? suffixIcon,
    Widget? prefixIcon,
  }) : super(
          errorBorder: FormOutlineBorder(context.colorScheme.error),
          enabledBorder: FormOutlineBorder(context.colorScheme.primary),
          focusedBorder: FormOutlineBorder(context.colorScheme.secondary),
          focusedErrorBorder: FormOutlineBorder(
            context.colorScheme.errorContainer,
          ),
          disabledBorder: FormOutlineBorder(context.colorScheme.surface),
          border: FormOutlineBorder(Colors.black),
          contentPadding: SizeType.hexa.size.withPaddingAll,
          suffixIcon: suffixIcon?.padding(
            pad: SizeType.hexa.size.withPaddingHorizontal,
          ),
          prefixIcon: prefixIcon?.padding(
            pad: SizeType.hexa.size.withPaddingHorizontal,
          ),
        );
}

final class FormOutlineBorder extends OutlineInputBorder {
  FormOutlineBorder(Color color)
      : super(
          borderRadius: SizeType.tetra.size.radiusCircle,
          gapPadding: SizeType.hexa.size,
          borderSide: BorderSide(
            color: color,
            strokeAlign: BorderSide.strokeAlignCenter,
            style: BorderStyle.solid,
            width: 2,
          ),
        );
}
