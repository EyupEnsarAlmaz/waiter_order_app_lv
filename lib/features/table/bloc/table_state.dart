part of 'table_bloc.dart';

enum TableStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == TableStatus.initial;
  bool get isLoading => this == TableStatus.loading;
  bool get isSuccess => this == TableStatus.success;
  bool get isFailure => this == TableStatus.failure;
}

@freezed
class TableState with _$TableState {
  const factory TableState({
    @Default(TableStatus.initial) TableStatus status,
    List<TableModel>? tableList,
  }) = _TableState;
}
