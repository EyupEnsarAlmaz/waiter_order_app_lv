import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/product_model.dart';

class HowCookModel extends ProductModel {
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
