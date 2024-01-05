part of 'food_basket_bloc.dart';

@freezed
class FoodBasketEvent with _$FoodBasketEvent {
  const factory FoodBasketEvent.addBasketFood(FoodModel? food) = _AddBasketFood;
  const factory FoodBasketEvent.removeBasketFood(
    FoodModel? food,
  ) = _RemoveBasketFood;
}
