part of 'food_menu_bloc.dart';

enum FoodMenuStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == FoodMenuStatus.initial;
  bool get isLoading => this == FoodMenuStatus.loading;
  bool get isSuccess => this == FoodMenuStatus.success;
  bool get isFailure => this == FoodMenuStatus.failure;
}

@freezed
class FoodMenuBlocState with _$FoodMenuBlocState {
  const factory FoodMenuBlocState({
    @Default(FoodMenuStatus.initial) FoodMenuStatus status,
    List<FoodModel>? foodList,
    List<SauceModel>? sauceList,
    List<SideModel>? sideList,
  }) = _RegisterBlocState;
}
