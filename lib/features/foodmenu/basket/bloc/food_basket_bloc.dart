import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';
import 'package:waiter_order_app_lv/core/error/result_types/result/result.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

part 'food_basket_event.dart';
part 'food_basket_state.dart';
part 'food_basket_bloc.freezed.dart';

class FoodBasketBloc extends Bloc<FoodBasketEvent, FoodBasketState> {
  FoodBasketBloc() : super(const FoodBasketState()) {
    on<_AddBasketFood>(_addBasketFood);
    on<_RemoveBasketFood>(_removeBasketFood);
    on<_RemoveAllFood>(_removeAllFood);
    on<_AddNotes>(_addNoteText);
    on<_UpdateBasketFood>(_updateBasketFood);
    on<_MakeGroupedItems>(_makeGroupedItems);
    on<_AddBasketDrinks>(_addBasketDrinks);
  }

  Map<int, List<FoodModel>> basketMap = {};
  Map<String, int>? itemCountMap = {};
  final _uuid = Uuid();

  Future<void> _addBasketFood(_AddBasketFood event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      basketMap.putIfAbsent(event.tableNumber!, () => []);
      basketMap[event.tableNumber!]!.add(event.food!);
      if (event.food != null && event.food?.foodName != null) {
        String foodName = event.food!.foodName!;
        String id = _uuid.v4();
        event.food!.id = id;
        print(id);
        int? itemCount = basketMap[event.tableNumber]
            ?.where((item) => item.foodName == foodName)
            .length;

        itemCountMap![foodName] = itemCount!;

        emit(state.copyWith(
            itemCountMap: itemCountMap,
            status: FoodBasketStatus.success,
            basketMap: basketMap,
            tableNumber: event.tableNumber));
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> _addBasketDrinks(_AddBasketDrinks event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      basketMap.putIfAbsent(event.tableNumber!, () => []);
      basketMap[event.tableNumber!]!.add(event.drinks!);
      if (event.drinks != null &&
          event.drinks?.drinksModel?.drinkName != null) {
        String drinksName = event.drinks!.drinksModel!.drinkName!;

        int? itemCount = basketMap[event.tableNumber]
            ?.where((item) => item.drinksModel!.drinkName == drinksName)
            .length;

        itemCountMap![drinksName] = itemCount!;

        emit(state.copyWith(
            itemCountMap: itemCountMap,
            status: FoodBasketStatus.success,
            basketMap: basketMap,
            tableNumber: event.tableNumber));
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> _updateBasketFood(_UpdateBasketFood event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));

      if (event.food == null || event.food!.id == null) {
        throw Exception('Food missing required "id" property');
      }

      final updatedBasket = basketMap[event.tableNumber] ?? [];
      final foodIndex =
          updatedBasket.indexWhere((item) => item.id == event.food!.id);

      if (foodIndex != -1) {
        updatedBasket[foodIndex] = event.food!;
      }
      basketMap[event.tableNumber!] = updatedBasket;

      String foodName = event.food!.foodName!;
      int? itemCount = basketMap[event.tableNumber]!
          .where((item) => item.id == event.food!.id)
          .length;

      itemCountMap![foodName] = itemCount!;

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

  Future<void> _removeBasketFood(_RemoveBasketFood event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      basketMap.putIfAbsent(event.tableNumber!, () => []);
      basketMap[event.tableNumber!]!.remove(event.food!);

      if (event.food != null && event.food!.foodName != null) {
        String foodName = event.food!.foodName!;
        int? itemCount = basketMap[event.tableNumber]
            ?.where((item) => item.foodName == foodName)
            .length;

        itemCountMap![foodName] = itemCount!;

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

  Future<void> _removeAllFood(_RemoveAllFood event, Emitter emit) async {
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

  Future<void> _makeGroupedItems(_MakeGroupedItems event, Emitter emit) async {
    try {
      Map<int, Map<String, List<FoodModel>>> groupedItemsByTableNumber = {};

      for (var entry in state.basketMap!.entries) {
        int tableNumber = entry.key;
        Map<String, List<FoodModel>> groupedItems = {};
        Set<String> uniqueFoodNames = Set();

        List<FoodModel>? foodList = entry.value;
        if (foodList != null) {
          for (var item in foodList) {
            String foodKey =
                '${item.foodName}-${item.choosenSide}-${item.choosenSauce}-${item.choosenCookStyle}';
            if (!uniqueFoodNames.contains(foodKey)) {
              uniqueFoodNames.add(foodKey);
              groupedItems[foodKey] = [item];
            } else {
              groupedItems[foodKey]!.add(item);
            }
          }
        }

        groupedItemsByTableNumber[tableNumber] = groupedItems;
        emit(state.copyWith(
            status: FoodBasketStatus.success, groupedItems: groupedItems));
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
