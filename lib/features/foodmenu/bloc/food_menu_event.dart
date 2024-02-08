part of 'food_menu_bloc.dart';

@freezed
class FoodMenuBlocEvent with _$FoodMenuBlocEvent {
  const factory FoodMenuBlocEvent.getDataFromFirebase(String? collectionName) = _GetDataFromFirebase;
  const factory FoodMenuBlocEvent.getDataByCategory(
      String? category, String? collectionName) = _GetDataByCategory;
}
