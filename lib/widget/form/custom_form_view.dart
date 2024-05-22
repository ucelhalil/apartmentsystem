import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

class CustomFormView extends StatelessWidget {
  const CustomFormView({
    super.key,
    required this.scrollController,
    required this.formKey,
    required this.children,
  });

  final ScrollController scrollController;
  final GlobalKey<FormState> formKey;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Form(
        key: formKey,
        child: ColumnWithSpacing(
          spacing: SizeType.ennea.size,
          children: children,
        ),
      ).padding(pad: SizeType.ennea.size.withPaddingAll),
    ).withSizedBox(width: SizeType.hepta.size * 3);
  }
}
