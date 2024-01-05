part of 'table_bloc.dart';

@freezed
class TableEvent with _$TableEvent {
  const factory TableEvent.openTable(bool isTableOpen, int tableNumber) =
      _OpenTable;
  const factory TableEvent.getTable() = _GetTable;
  const factory TableEvent.closeTable(bool isTableOpen, int tableNumber) =
      _CloseTable;
}
