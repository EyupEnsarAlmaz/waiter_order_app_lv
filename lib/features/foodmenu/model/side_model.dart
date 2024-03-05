import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/product_model.dart';

class SideModel extends ProductModel {
  SideModel({
    super.price,
    super.name,
  });
  factory SideModel.fromMap(Map<String, dynamic> map) {
    return SideModel(
      name: map['sideName'] ?? '',
      price: map['sidePrice']?.toInt() ?? 0,
    );
  }
}
