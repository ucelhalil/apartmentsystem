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
    // --- Apartment ---
    final uid = fireStoreWrite.docUid;
    //
    final apartment = TBLApartment(
      uid: uid,
      isActive: true,
      createdBy: FireUser.of.currentUser?.email,
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
    try {
      await fireStoreWrite.create(uid,  apartment.toJson());
    } catch (e) {
      return errorDialog(e.toString());
    }
    // ignore: use_build_context_synchronously
    return context.customShowDialog(
      dialog: CustomDialog(
        child: MyDialog.success(message: 'Apartman Eklendi').build(),
      ),
    );
  }

    Future<T> errorDialog<T>(String code) async {
    return await context.customShowDialog(
      dialog: CustomDialog(
        child: MyDialog.error(
          message: code,
        ).build(),
      ),
    );
  }
}
