import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';
import 'package:waiter_order_app_lv/core/error/result_types/result/result.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/product_model.dart';

part 'food_basket_event.dart';
part 'food_basket_state.dart';
part 'food_basket_bloc.freezed.dart';

class FoodBasketBloc extends Bloc<FoodBasketEvent, FoodBasketState> {
  FoodBasketBloc() : super(const FoodBasketState()) {
    on<_AddBasketItem>(_addBasketItem);
    on<_RemoveBasketItem>(_removeItemFromBasket);
    on<_RemoveAllItem>(_removeAllItem);
    on<_AddNotes>(_addNoteText);
    on<_UpdateBasketItem>(_updateBasketItem);
  }

  Map<int, List<ProductModel>> basketMap = {};
  Map<String, int>? itemCountMap = {};
  final _uuid = Uuid();

  Future<void> _addBasketItem(_AddBasketItem event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      basketMap.putIfAbsent(event.tableNumber!, () => []);
      if (event.item?.name != null) {
        basketMap[event.tableNumber!]!.add(event.item!);
        String name = event.item!.name!;
        int? itemCount = basketMap[event.tableNumber]
            ?.where((item) => item.name == name)
            .length;
        String id = _uuid.v4();
        event.item!.id = id;
        print(id);
        itemCountMap![name] = itemCount!;
      }
      emit(state.copyWith(
          itemCountMap: itemCountMap,
          status: FoodBasketStatus.success,
          basketMap: basketMap,
          tableNumber: event.tableNumber));
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> _updateBasketItem(_UpdateBasketItem event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));

      if (event.item?.name == null || event.item?.id == null) {
        throw Exception('Food missing required "id" property');
      }
      final updatedBasket = basketMap[event.tableNumber] ?? [];
      final foodIndex =
          updatedBasket.indexWhere((item) => item.id == event.item!.id);

      if (foodIndex != -1) {
        updatedBasket[foodIndex] = event.item!;
      }
      basketMap[event.tableNumber!] = updatedBasket;

      String name = event.item!.name!;
      int? itemCount = basketMap[event.tableNumber]!
          .where((item) => item.id == event.item!.id)
          .length;

      itemCountMap![name] = itemCount;

      emit(state.copyWith(
          itemCountMap: itemCountMap,
          status: FoodBasketStatus.success,
          basketMap: basketMap,
          tableNumber: event.tableNumber));
    } catch (error) {
      print('Error: $error');
      emit(state.copyWith(status: FoodBasketStatus.failure));
    }
  }

  Future<void> _removeItemFromBasket(
      _RemoveBasketItem event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      basketMap.putIfAbsent(event.tableNumber!, () => []);
      if (event.item?.name != null) {
        basketMap[event.tableNumber!]!.remove(event.item!);
        String name = event.item!.name!;
        int? itemCount = basketMap[event.tableNumber]
            ?.where((item) => item.name == name)
            .length;
        itemCountMap![name] = itemCount!;
        emit(state.copyWith(
            status: FoodBasketStatus.success,
            itemCountMap: itemCountMap,
            basketMap: basketMap,
            tableNumber: event.tableNumber));
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> _removeAllItem(_RemoveAllItem event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      event.basketMaps?[event.tableNumber]?.clear();
      itemCountMap?.clear();
      emit(state.copyWith(
          status: FoodBasketStatus.success,
          itemCountMap: itemCountMap,
          basketMap: basketMap,
          tableNumber: event.tableNumber));
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> _addNoteText(_AddNotes event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      emit(state.copyWith(
          status: FoodBasketStatus.success, noteText: event.noteText));
    } catch (error) {
      print('Error: $error');
    }
  }
}
