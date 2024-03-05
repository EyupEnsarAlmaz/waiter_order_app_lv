import 'package:waiter_order_app_lv/features/foodmenu/model/product_model.dart';

class FoodModel extends ProductModel {
  String? category;
  String? content;
  String? choosenSide;
  String? choosenSauce;
  String? choosenCookStyle;
  bool? side;
  bool? sauce;
  bool? howCook;

  FoodModel(
      {this.category,
      this.howCook,
      this.choosenCookStyle,
      this.choosenSauce,
      this.choosenSide,
      this.side,
      this.sauce,
      this.content,
      super.id,
      super.name,
      super.image,
      super.price});
  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      image: map['foodimage'] ?? '',
      name: map['foodName'] ?? '',
      price: map['price']?.toInt() ?? 0,
      category: map['category'] ?? '',
      content: map['content'] ?? '',
      side: map['side'] ?? false,
      sauce: map['sauce'] ?? false,
      howCook: map['howCook'] ?? false,
    );
  }
}
