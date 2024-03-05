import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/product_model.dart';

class SauceModel extends ProductModel {
  SauceModel({
    super.price,
    super.name,
  });
  factory SauceModel.fromMap(Map<String, dynamic> map) {
    return SauceModel(
      price: map['saucePrice']?.toInt() ?? 0,
      name: map['sauceName'] ?? "",
    );
  }
}
