import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waiter_order_app_lv/core/network/firestore/food_service/food_service.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

part 'food_menu_event.dart';
part 'food_menu_state.dart';
part 'food_menu_bloc.freezed.dart';

class FoodMenuBloc extends Bloc<FoodMenuBlocEvent, FoodMenuBlocState> {
  FoodMenuBloc() : super(const FoodMenuBlocState()) {
    on<_GetDataFromFirebase>(_getDataFromFirestore);
    on<_GetDataByCategory>(_getDataByCategory);
  }

  final _foodservice = FoodService.shared;

  Future<void> _getDataFromFirestore(
      _GetDataFromFirebase event, Emitter emit) async {
    try {
      emit(state.copyWith(status: FoodMenuStatus.loading));
      var foodlist = await _foodservice.getFoodFromFirestore(
          colletionName: event.collectionName!);
      await Future.delayed(Duration(milliseconds: 500));
      emit(state.copyWith(status: FoodMenuStatus.success, foodList: foodlist));
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
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyWith(status: FoodMenuStatus.success, foodList: foodlist));
    } catch (e) {
      emit(state.copyWith(status: FoodMenuStatus.failure));
    }
  }
}
