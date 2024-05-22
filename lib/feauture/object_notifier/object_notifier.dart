import 'package:apartment_system/index.dart';

final class MyObjectNotifier {
  static MyObjectNotifier? _of;
  static MyObjectNotifier get of => _of ??= MyObjectNotifier._();
  MyObjectNotifier._();

  final FireUserNotifier _fireUserNotifier = FireUserNotifier(null);
  FireUserNotifier get fireUser => _fireUserNotifier;
}
