import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waiter_order_app_lv/core/network/firestore/table_service/table_service.dart';
import 'package:waiter_order_app_lv/features/table/model/table_model.dart';

part 'table_event.dart';
part 'table_state.dart';
part 'table_bloc.freezed.dart';

class TableBloc extends Bloc<TableEvent, TableState> {
  TableBloc() : super(TableState()) {
    on<_OpenTable>(_openTable);
    on<_CloseTable>(_closeTable);
    on<_GetTable>(_getTable);
    on<_IsAway>(_isAway);
  }

  final _tableService = TableService.shared;

  Future<void> _getTable(_GetTable event, Emitter emit) async {
    try {
      emit(state.copyWith(status: TableStatus.loading));
      var tableList = await _tableService.getTableFromFirestore();
      emit(state.copyWith(status: TableStatus.success, tableList: tableList));
    } catch (e) {
      emit(state.copyWith(status: TableStatus.failure));
    }
  }

  Future<void> _openTable(_OpenTable event, Emitter emit) async {
    try {
      emit(state.copyWith(status: TableStatus.loading));
      var response = _tableService.openTable(
          tableNumber: event.tableNumber, isOpen: event.isTableOpen);
      emit(state.copyWith(
          status: TableStatus.success, tableNumber: event.tableNumber));
      emit(state.copyWith(status: TableStatus.loading));
    } catch (e) {
      emit(state.copyWith(status: TableStatus.failure));
    }
  }

  Future<void> _closeTable(_CloseTable event, Emitter emit) async {
    try {
      emit(state.copyWith(status: TableStatus.loading));
      var response = _tableService.closeTable(
          isAway: event.isAwway,
          tableNumber: event.tableNumber,
          isOpen: event.isTableOpen);
      emit(state.copyWith(
          status: TableStatus.success, tableNumber: event.tableNumber));
    } catch (e) {
      emit(state.copyWith(status: TableStatus.failure));
    }
  }

  Future<void> _isAway(_IsAway event, Emitter emit) async {
    try {
      emit(state.copyWith(status: TableStatus.loading));
      var response = _tableService.doAway(
          isAway: event.isAway, tableNumber: event.tableNumber);
      emit(state.copyWith(
          status: TableStatus.success, tableNumber: event.tableNumber));
    } catch (e) {
      emit(state.copyWith(status: TableStatus.failure));
    }
  }
}
