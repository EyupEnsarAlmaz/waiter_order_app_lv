import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

class SauceModel extends FoodModel{
  int? saucePrice;
  String? sauceName;
  SauceModel({
    this.saucePrice,
    this.sauceName,
  });
  factory SauceModel.fromMap(Map<String, dynamic> map) {
    return SauceModel(
      saucePrice: map['saucePrice']?.toInt() ?? 0,
      sauceName: map['sauceName'] ?? "",
    );
  }
}
