import 'package:apartment_system/index.dart';
import 'package:flutter/foundation.dart';

class FireUserNotifier extends ValueNotifier<FireUser?> {
  FireUserNotifier(super.value);
  FireUser? _fireUser;

  FireUser? get fireUser => _fireUser;

  void setFireUser(FireUser user) {
    _fireUser = user;
    notifyListeners();
  }

  Future<void> getFireUser() async {
    _fireUser ??= await FirestoreUser.of.user;
    return;
  }

  bool get isExist => _fireUser != null;
  bool get isActive => _fireUser?.isActive ?? false;
  int get apartment => _fireUser?.apartment ?? 0;
  int get flat => _fireUser?.flat ?? 0;
}
