import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

class DrinksModel extends FoodModel {
  int? drinkPrice;
  String? drinkName;
  String? category;
  DrinksModel({
    this.drinkPrice,
    this.drinkName,
    this.category,
  });
  factory DrinksModel.fromMap(Map<String, dynamic> map) {
    return DrinksModel(
      category: map['category'] ?? '',
      drinkName: map['drinkName'] ?? '',
      drinkPrice: map['drinkPrice']?.toInt() ?? 0,
    );
  }
}
