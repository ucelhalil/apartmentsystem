part of 'apartment_list.dart';

class ApartmentListWidget extends StatelessWidget {
  const ApartmentListWidget({super.key, required this.list});

  final List<FirestoreData> list;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: SizeType.hexa.size,
      runSpacing: SizeType.hexa.size,
      children: list
          .map((e) => ApartmentCard(
                apartment: TBLApartment.fromJson(e.data),
              ))
          .toList(),
    ).scrollVertical();
  }
}
