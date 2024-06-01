part of 'apartment_card.dart';

mixin ApartmentCardFunction on StatelessWidget {
  Future<void> favorite(TBLApartment apartment) async {
    bool? favorite = apartment.isFavorite ?? false;
    if(apartment.uid.isNullOrEmpty) return ;
    //
    try {
      await FirestoreUpdate<TBLApartment>().setDocument(
        apartment.uid!,
        apartment.copyWith(isFavorite: !favorite).toJson(),
      );
    } catch (e) {
      if (kDebugMode) debugPrint('ApartmentCard.favorite: $e');
    }
  }
}
