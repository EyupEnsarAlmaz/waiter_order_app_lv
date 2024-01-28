part of 'food_basket_bloc.dart';

enum FoodBasketStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == FoodBasketStatus.initial;
  bool get isLoading => this == FoodBasketStatus.loading;
  bool get isSuccess => this == FoodBasketStatus.success;
  bool get isFailure => this == FoodBasketStatus.failure;
}

@freezed
class FoodBasketState with _$FoodBasketState {
  const factory FoodBasketState({
    @Default(FoodBasketStatus.initial) FoodBasketStatus status,
    Map<int, List<FoodModel>?>? basketMap,
    String? noteText,
    int? tableNumber,
  }) = _FoodBasketState;
}
