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

List<TBLIncome> _incomeList = [];

class _IncomeTotal extends StatelessWidget {
  const _IncomeTotal();

  @override
  Widget build(BuildContext context) {
    if (_incomeList.isEmpty) {
      FirestoreRead<TBLIncome>().collection().then((value) {
        if (value.hasError) {
          return SnapshotHasErrorWidget(error: value.message ?? '');
        }
        // ------------------------
        value.data.map((e) {
          if (!e.hasError) {
            _incomeList.add(TBLIncome.fromJson(e.data));
          }
        });
        // ------------------------
      });

      return _IncomeCard(_incomeList);
    } else {
      return _IncomeCard(_incomeList);
    }
  }
}

class _IncomeCard extends StatelessWidget {
  const _IncomeCard(this.incomeList);

  final List<TBLIncome> incomeList;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
