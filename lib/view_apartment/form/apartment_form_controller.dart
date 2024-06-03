part of 'apartment_form.dart';

class ApartmentFormController {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _floorController = TextEditingController();
  final _flatController = TextEditingController();
  final _dateController = TextEditingController();
  final _elevatorNotifier = BoolNotifier(false);

  bool isValidate() {
    if (_formKey.currentState == null) return false;
    return _formKey.currentState!.validate();
  }

  GlobalKey<FormState> get formKey => _formKey;

  TextEditingController get nameController => _nameController;
  TextEditingController get addressController => _addressController;
  TextEditingController get floorController => _floorController;
  TextEditingController get flatController => _flatController;
  TextEditingController get dateController => _dateController;
  BoolNotifier get elevatorNotifier => _elevatorNotifier;

  String get nameValue => _nameController.text;
  String get addressValue => _addressController.text;
  int get floorValue => int.tryParse(_floorController.text) ?? 0;
  int get flatValue => int.tryParse(_flatController.text) ?? 0;
  DateTime get dateValue =>
      DateTime.tryParse(_dateController.text) ?? DateTime.now();

  void setName(String value) => _nameController.text = value;
  void setAddress(String value) => _addressController.text = value;
  void setFloor(int value) => _floorController.text = value.toString();
  void setFlat(int value) => _flatController.text = value.toString();
  void setDate(DateTime value) =>
      _dateController.text = value.toIso8601String();

  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _floorController.dispose();
    _flatController.dispose();
    _dateController.dispose();
    _elevatorNotifier.dispose();
  }
}
