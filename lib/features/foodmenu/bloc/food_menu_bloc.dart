import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waiter_order_app_lv/core/network/firestore/food_service/food_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/howcook_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/sauce_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';
part 'food_menu_event.dart';
part 'food_menu_state.dart';
part 'food_menu_bloc.freezed.dart';

class FoodMenuBloc extends Bloc<FoodMenuBlocEvent, FoodMenuBlocState> {
  FoodMenuBloc() : super(const FoodMenuBlocState()) {
    on<_GetDataFromFirebase>(_getDataFromFirestore);
    on<_GetDataByCategory>(_getDataByCategory);
    on<_GetSideFromFirebase>(_getSideFromFirebase);
    on<_GetDrinksFromFirestore>(_getDrinksFromFirestore);
  }

  final _foodservice = FoodService.shared;

  Future<void> _getDataFromFirestore(
      _GetDataFromFirebase event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodMenuStatus.loading));
      var foodlist = await _foodservice.getFoodFromFirestore(
          colletionName: event.collectionName!);
      await Future.delayed(const Duration(milliseconds: 100));
      if (foodlist != null) {
        emit(
            state.copyWith(status: FoodMenuStatus.success, foodList: foodlist));
      }
    } catch (e) {
      emit(state.copyWith(status: FoodMenuStatus.failure));
    }
  }

  Future<void> _getSideFromFirebase(
      _GetSideFromFirebase event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodMenuStatus.loading));
      var list = await _foodservice.getSidesFromFirestore();
      var sauceList = list?[0];
      var sideList = list?[1];
      var howcookList = list?[2];

      emit(state.copyWith(
          status: FoodMenuStatus.success,
          sauceList: sauceList,
          howcookList: howcookList,
          sideList: sideList));
    } catch (e) {
      emit(state.copyWith(status: FoodMenuStatus.failure));
    }
  }

  Future<void> _getDataByCategory(
      _GetDataByCategory event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodMenuStatus.loading));
      var foodlist = await _foodservice.getFoodByCategory(
          category: event.category!, colletionName: event.collectionName!);
      await Future.delayed(const Duration(milliseconds: 700));
      if (foodlist != null) {
        emit(
            state.copyWith(status: FoodMenuStatus.success, foodList: foodlist));
      }
    } catch (e) {
      emit(state.copyWith(status: FoodMenuStatus.failure));
    }
  }

  Future<void> _getDrinksFromFirestore(
      _GetDrinksFromFirestore event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodMenuStatus.loading));
      var drinkList = await _foodservice.getDrinksFromFirestore();
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(
          status: FoodMenuStatus.drinksuccess, drinksList: drinkList));
    } catch (e) {
      emit(state.copyWith(status: FoodMenuStatus.failure));
    }
  }
}
