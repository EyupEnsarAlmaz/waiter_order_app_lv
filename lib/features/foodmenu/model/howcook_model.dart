import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

class HowCookModel extends FoodModel {
  String? cookStyle;
  HowCookModel({
    this.cookStyle,
  });
  factory HowCookModel.fromMap(Map<String, dynamic> map) {
    return HowCookModel(
      cookStyle: map['cookStyle'] ?? "",
    );
  }
}
