part of 'food_menu_bloc.dart';

enum FoodMenuStatus {
  initial,
  loading,
  success,
  drinksuccess,
  failure;

  bool get isInitial => this == FoodMenuStatus.initial;
  bool get isLoading => this == FoodMenuStatus.loading;
  bool get isSuccess => this == FoodMenuStatus.success;
  bool get isDrinkStatus => this == FoodMenuStatus.drinksuccess;
  bool get isFailure => this == FoodMenuStatus.failure;
}

@freezed
class FoodMenuBlocState with _$FoodMenuBlocState {
  const factory FoodMenuBlocState({
    @Default(FoodMenuStatus.initial) FoodMenuStatus status,
    List<FoodModel>? foodList,
    List<SauceModel>? sauceList,
    List<SideModel>? sideList,
    List<DrinksModel>? drinksList,
    List<HowCookModel>? howcookList,
  }) = _RegisterBlocState;
}
