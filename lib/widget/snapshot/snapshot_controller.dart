import 'package:apartment_system/index.dart';
import 'package:flutter/material.dart';

class SnapshotViewController<T> extends StatelessWidget {
  const SnapshotViewController(
      {super.key,
      required this.snapshot,
      this.hasError,
      this.hasNotData,
      this.connectionWaiting,
      required this.child});

  final AsyncSnapshot<T> snapshot;
  final Widget? hasError;
  final Widget? hasNotData;
  final Widget? connectionWaiting;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (snapshot.hasError) {
      return hasError ??
          SnapshotHasErrorWidget(error: snapshot.error.toString());
    }

    if (snapshot.hasData && snapshot.data == null) {
      return hasNotData ??
          SnapshotHasNotDataWidget(error: snapshot.error.toString());
    }

    if (snapshot.connectionState == ConnectionState.done) {
      return child;
    }

    return connectionWaiting ?? const ConnectionWaiting();
  }
}
