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
    on<_AddNotes>(_addNoteText);
  }

  List<FoodModel>? basketItems = [];

  Future<void> _addBasketFood(_AddBasketFood event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      final _addItem = basketItems!.add(event.food as FoodModel);
      emit(state.copyWith(
          status: FoodBasketStatus.success,
          basketItem: basketItems,
          tableNumber: event.tableNumber));
    } catch (error) {
      print('Error: $error');
    }
  }

  Future<void> _removeBasketFood(_RemoveBasketFood event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodBasketStatus.loading));
      final _removeItem = basketItems!.remove(event.food as FoodModel);
      emit(state.copyWith(
          status: FoodBasketStatus.success,
          basketItem: basketItems,
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
