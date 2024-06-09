import 'package:flutter/material.dart';

extension NumericWidgetExtension on double {
  SizedBox get heightBox => SizedBox(height: this);
  SizedBox get widthBox => SizedBox(width: this);
}
