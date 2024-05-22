part of 'apartment_form.dart';

mixin _ApartmentFormMixin on State<ApartmentForm> {
  late ScrollController scrollController;
  late ApartmentFormController form;
  late FirestoreWrite fireStoreWrite;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    form = ApartmentFormController();
    fireStoreWrite = FirestoreWrite<TBLApartment>();
  }

  @override
  void dispose() {
    scrollController.dispose();
    form.dispose();
    super.dispose();
  }

  Future<void> submit() async {
    if (!form.isValidate()) return;

    final uid = fireStoreWrite.newDocumentId;

    if (uid.isNullOrEmpty) {
      // ignore: use_build_context_synchronously
      return context.customShowDialog(
        dialog: CustomDialog(
          child: MyDialog.error(message: 'UID oluşturulamadı').build(),
        ),
      );
    }

    // --- Apartment ---
    final apartment = TBLApartment(
      uid: uid,
      isActive: true,
      createdBy: AuthUser.of.currentUser?.email,
      createdDate: DateTime.now(),
      // ---  ---
      name: form.nameValue,
      address: form.addressValue,
      floor: form.floorValue,
      flats: form.flatValue,
      buildDate: form.dateValue,
      haveElevator: form.elevatorNotifier.value,
    );
    // --- Add Apartment ---
    final response = await fireStoreWrite.add(docData: apartment);
    // --- Show Message ---
    if (!context.mounted) return;
    // ---  ---
    if (response.hasError) {
      // ignore: use_build_context_synchronously
      return context.customShowDialog(
        dialog: CustomDialog(
          child: MyDialog.error(message: response.message ?? '').build(),
        ),
      );
    }

    // ignore: use_build_context_synchronously
    return context.customShowDialog(
      dialog: CustomDialog(
        child: MyDialog.success(message: 'Apartman Eklendi').build(),
      ),
    );
  }
}
