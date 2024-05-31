part of './home_view.dart';

class _HomeViewBody extends StatelessWidget {
  const _HomeViewBody();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: SizeType.ennea.size,
      runSpacing: SizeType.ennea.size,
      children: const [
        // ------------------------
        _ActiveTCount<TBLApartment>(
          title: 'Apartment',
          asset: MyAsset.apartment,
        ),
        // ------------------------
        _ActiveTCount<TBLFlats>(
          title: 'Flats',
          asset: MyAsset.home,
        ),
        // ------------------------

        UserProfileView(),
      ],
    ).scrollVertical();
  }
}

class _IncomeTotal extends StatelessWidget {
  const _IncomeTotal();

  @override
  Widget build(BuildContext context) {
    if (FutureOption.of.tblIncome != null &&
        FutureOption.of.tblIncome!.controlData()) {
      return _IncomeListCard(FutureOption.of.tblIncome!.data);
    }

    return FutureBuilder(
        future: FirestoreRead().collection(),
        builder: (context, snapshot) {
          return Container();
        });
  }
}

class _IncomeListCard extends StatelessWidget {
  const _IncomeListCard(this.incomeList);

  final List<TBLIncome> incomeList;

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [],
      ),
    );
  }
}

class _ActiveTCount<T extends BaseDBModel> extends StatelessWidget {
  const _ActiveTCount({
    required this.title,
    required this.asset,
  });

  final String title;
  final MyAsset asset;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirestoreCount<T>().count(),
      builder: (context, snapshot) {
        // ------------------------
        return SnapshotViewController<int>(
          snapshot: snapshot,
          child: Card(
            child: [
              WIconAsset(path: asset.path, size: 100),
              [
                WText(text: '$title Count'),
                WText(text: '${snapshot.data}'),
              ].centerColumn,
            ].row.withSizedBox(
                  height: SizeType.hepta.size,
                  width: SizeType.teta.size,
                ),
          ),
        );
      },
    );
  }
}
