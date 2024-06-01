import 'package:flutter/material.dart';

extension WidgetListExtension on List<Widget> {
  /// Add a divider between each widget in the list.
  List<Widget> addDividers() {
    return List<Widget>.from(expand((widget) => [widget, const Divider()]))
      ..removeLast();
  }

  Row get row {
    return Row(
      children: this,
    );
  }

  Row get centerRow {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: this,
    );
  }

  Row get spaceBetweenRow {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: this,
    );
  }

  Row get spaceAroundRow {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: this,
    );
  }

  Column get column {
    return Column(
      children: this,
    );
  }

  Column get centerColumn {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: this,
    );
  }

  Column get spaceBetweenColumn {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: this,
    );
  }

  Column get spaceAroundColumn {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: this,
    );
  }

  Stack get stack {
    return Stack(
      children: this,
    );
  }
}
