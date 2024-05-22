part of 'apartment_card.dart';

mixin ApartmentCardFunction on StatelessWidget {
  Future<void> favorite(TBLApartment apartment) async {
    bool? favorite = apartment.isFavorite ?? false;
    //
    try {
      await FirestoreUpdate<TBLApartment>().set(
        docData: apartment.copyWith(isFavorite: !favorite),
      );
    } catch (e) {
      if (kDebugMode) debugPrint('ApartmentCard.favorite: $e');
    }
  }
}
