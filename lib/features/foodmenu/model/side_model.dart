import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

class SideModel extends FoodModel {
  int? sidePrice;
  String? sideName;
  SideModel({
    this.sidePrice,
    this.sideName,
  });
  factory SideModel.fromMap(Map<String, dynamic> map) {
    return SideModel(
      sideName: map['sideName'] ?? '',
      sidePrice: map['sidePrice']?.toInt() ?? 0,
    );
  }
}
