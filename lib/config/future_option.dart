import 'package:apartment_system/index.dart';

class DataCache<T> {
  final List<T> data;
  final DateTime timestamp;

  DataCache({required this.data, required this.timestamp});

  DataCache.now({required this.data}) : timestamp = DateTime.now().toUtc();

  bool isAfter15Now() {
    return DateTime.now().toUtc().difference(timestamp).inMinutes > 15;
  }

  bool controlData() {
    return data.isNotEmpty && !isAfter15Now();
  }
}

class FutureOption {
  FutureOption._();
  static FutureOption get of => FutureOption._();

  DataCache<TBLApartment>? _tblApartment;
  DataCache<TBLApartment>? get tblApartment => _tblApartment;
  setApartment(List<TBLApartment> data) =>
      _tblApartment = DataCache.now(data: data);

  DataCache<TBLFlats>? _tblFlat;
  DataCache<TBLFlats>? get tblFlat => _tblFlat;
  setFlat(List<TBLFlats> data) => _tblFlat = DataCache.now(data: data);

  DataCache<TBLIncome>? _tblIncome;
  DataCache<TBLIncome>? get tblIncome => _tblIncome;
  setIncome(List<TBLIncome> data) => _tblIncome = DataCache.now(data: data);
}
