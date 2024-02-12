import 'package:waiter_order_app_lv/features/foodmenu/model/sauce_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';

class FoodModel {
  String? foodImage;
  String? foodName;
  String? content;
  String? choosenSide;
  String? choosenSauce;
  String? choosenCookStyle;
  bool? sides;
  bool? sauce;
  bool? howCook;
  int? price;
  String? category;
  FoodModel({
    this.foodImage,
    this.sauce,
    this.howCook,
    this.choosenSide,
    this.choosenSauce,
    this.choosenCookStyle,
    this.sides,
    this.foodName,
    this.content,
    this.price,
    this.category,
  });
  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      foodImage: map['foodimage'] ?? '',
      foodName: map['foodName'] ?? '',
      price: map['price']?.toInt() ?? 0,
      category: map['category'] ?? '',
      content: map['content'] ?? '',
      sides: map['sides'] ?? false,
      sauce: map['sauce'] ?? false,
      howCook: map['howCook'] ?? false,
      choosenSide: map['choosenSide'] ?? '',
      choosenCookStyle: map['choosenCookStyle'] ?? '',
      choosenSauce: map['choosenSauce'] ?? '',
    );
  }
}
