import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/product_model.dart';

class DrinksModel extends ProductModel {
  String? category;
  DrinksModel({
    super.price,
    super.name,
    this.category,
  });
  factory DrinksModel.fromMap(Map<String, dynamic> map) {
    return DrinksModel(
      category: map['category'] ?? '',
      name: map['drinkName'] ?? '',
      price: map['drinkPrice']?.toInt() ?? 0,
    );
  }
}
