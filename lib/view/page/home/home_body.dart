
part of './home_view.dart';



class _HomeViewBody extends StatelessWidget {
  const _HomeViewBody();

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        _ActiveApartmentCount(),
      ],
    );
  }
}

class _ActiveApartmentCount extends StatelessWidget {
  const _ActiveApartmentCount();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: FirestoreCount().count() , builder: (context, snapshot) {
      if (snapshot.hasError) {
          return SnapshotHasErrorWidget(error: snapshot.error.toString());
        }

        if (snapshot.hasData && snapshot.hasError) {
          return SnapshotHasNotDataWidget(error: snapshot.error.toString());
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return Card(
            child: SizedBox(
              height: 150,
              width: 250,
              child: Column(
                children: [
                  WIconAsset(path: MyAsset.apartment.path,size: 100 ),
                  Row(
                    children: [
                      const WText(text: 'Apartment Count'),
                      WText(text: '${snapshot.data}')
                    ],
                  ),
                ],
              ),
            ),);
        }

        return const ConnectionWaiting();
    },
    );
  }
}