import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';
import 'package:codeofwidget/codeofwidget.dart';
import 'package:flutter/material.dart';

part 'apartment_list_widget.dart';

class ApartmentList extends StatelessWidget {
  const ApartmentList({super.key});

  @override
  Widget build(BuildContext context) {
    // ------------------------
    return FutureBuilder(
      future: FirestoreRead<TBLApartment>().collection(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SnapshotHasErrorWidget(error: snapshot.error.toString());
        }
        // TODO:
        // if (snapshot.hasData && snapshot.data!.hasError) {
        //   return SnapshotHasNotDataWidget(error: snapshot.data!.message ?? '');
        // }

        // if (snapshot.connectionState == ConnectionState.done) {
        //   return ApartmentListWidget(list: snapshot.data!.data);
        // }

        return const ConnectionWaiting();
      },
    ).padding(pad: SizeType.ennea.size.withPaddingAll);
  }
}
