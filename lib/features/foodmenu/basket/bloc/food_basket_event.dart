part of 'food_basket_bloc.dart';

@freezed
class FoodBasketEvent with _$FoodBasketEvent {
  const factory FoodBasketEvent.addBasketFood(
      FoodModel? food, int? tableNumber) = _AddBasketFood;
  const factory FoodBasketEvent.addNotes(String? noteText, int? tableNumber) =
      _AddNotes;
  const factory FoodBasketEvent.removeBasketFood(
      FoodModel? food, int? tableNumber) = _RemoveBasketFood;
  const factory FoodBasketEvent.removeAllFood(
          Map<int, List<FoodModel>?>? basketMaps, int? tableNumber) =
      _RemoveAllFood;
}
