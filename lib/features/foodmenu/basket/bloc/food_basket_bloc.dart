import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waiter_order_app_lv/core/error/result_types/result/result.dart';
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
  }

  Map<int, List<FoodModel>> basketMap = {};

  Future<void> _addBasketFood(_AddBasketFood event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      basketMap.putIfAbsent(event.tableNumber!, () => []);
      basketMap[event.tableNumber!]!.add(event.food!);
      emit(state.copyWith(
          status: FoodBasketStatus.success,
          basketMap: basketMap,
          tableNumber: event.tableNumber));
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> _removeBasketFood(_RemoveBasketFood event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      basketMap.putIfAbsent(event.tableNumber!, () => []);
      basketMap[event.tableNumber!]!.remove(event.food!);
      emit(state.copyWith(
          status: FoodBasketStatus.success,
          basketMap: basketMap,
          tableNumber: event.tableNumber));
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> _removeAllFood(_RemoveAllFood event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      event.basketMaps?[event.tableNumber]?.clear();
      emit(state.copyWith(
          status: FoodBasketStatus.success,
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
