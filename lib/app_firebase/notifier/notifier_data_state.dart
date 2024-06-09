import 'package:codeofland/codeofland.dart';

class TableDataState<T>  extends MyEquatable{
  TableDataState({
    this.list,
    this.isLoading = false,
    this.hasError = false,
    this.timespamp,
  });

  final List<T>? list;
  final bool isLoading;
  final bool hasError;
  final DateTime? timespamp;
  
  @override
  List<Object?> get props => [list,isLoading,hasError,timespamp];
  
  TableDataState<T> copyWith({
    List<T>? list,
    bool? isLoading,
    bool? hasError,
    DateTime? timespamp,
  }) {
    return TableDataState(
      list: list ?? this.list,
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      timespamp: timespamp ?? this.timespamp,
    );
  }

}