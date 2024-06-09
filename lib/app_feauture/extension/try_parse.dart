

extension TryParseStringExtension on String? {
  bool get nullOrEmpty =>   this == null || this!.isEmpty;

  DateTime get minimumDate  => DateTime(1950,1,1);
  DateTime get maximumDate  => DateTime.now();

  bool get dateTimeParse {
    if (nullOrEmpty) return false;

    if (DateTime.tryParse(this!) == null) return false;

    if (!DateTime.parse(this!).isAfter(minimumDate)) return false;

    if (!DateTime.parse(this!).isBefore(maximumDate)) return false;

    return true;
  }
}
