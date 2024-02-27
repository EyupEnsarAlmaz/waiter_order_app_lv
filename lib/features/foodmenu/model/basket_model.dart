import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';

class BasketModel {
  FoodModel? foodModel;
  DrinksModel? drinksModel;
  SideModel? sideModel;

  BasketModel({this.foodModel, this.drinksModel, this.sideModel});
  factory BasketModel.fromMap(Map<String, dynamic> map) {
    return BasketModel(
      sideModel: SideModel.fromMap(map),
      foodModel: FoodModel.fromMap(map),
      drinksModel: DrinksModel.fromMap(map),
    );
  }
}
