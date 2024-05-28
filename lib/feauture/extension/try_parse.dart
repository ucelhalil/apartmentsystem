import 'package:apartment_system/index.dart';
import 'package:codeofland/codeofland.dart';

extension TryParseStringExtension on String? {
  bool get dateTimeParse {
    if (isNullOrEmpty) return false;

    if (DateTime.tryParse(this!) == null) return false;

    if (!DateTime.parse(this!).isAfter(minimumDate)) return false;

    if (!DateTime.parse(this!).isBefore(maximumDate)) return false;

    return true;
  }
}
