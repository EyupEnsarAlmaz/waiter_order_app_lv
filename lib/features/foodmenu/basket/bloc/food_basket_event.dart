part of 'food_basket_bloc.dart';

@freezed
class FoodBasketEvent with _$FoodBasketEvent {
  const factory FoodBasketEvent.addBasketItem(
      ProductModel? item, int? tableNumber) = _AddBasketItem;
  const factory FoodBasketEvent.updateBasketItem(
      ProductModel? item, int? tableNumber) = _UpdateBasketItem;
  const factory FoodBasketEvent.addNotes(String? noteText, int? tableNumber) =
      _AddNotes;
  const factory FoodBasketEvent.removeItemFromBasket(
      ProductModel? item, int? tableNumber) = _RemoveBasketItem;
  const factory FoodBasketEvent.removeAllItem(
          Map<int, List<ProductModel>?>? basketMaps, int? tableNumber) =
      _RemoveAllItem;
}
