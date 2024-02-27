import 'package:uuid/uuid.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/howcook_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/sauce_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';

class FoodModel {
  String? foodImage;
  String? foodName;
  String? id;
  String? content;
  String? choosenSide;
  String? choosenSauce;
  String? choosenCookStyle;
  SauceModel? sauceModel;
  SideModel? sideModel;
  HowCookModel? howCookModel;
  DrinksModel? drinksModel;
  bool? side;
  bool? sauce;
  bool? howCook;
  int? price;
  String? category;
  FoodModel({
    this.foodImage,
    this.sauce,
    this.howCook,
    this.howCookModel,
    this.sauceModel,
    this.sideModel,
    this.choosenSide,
    this.id,
    this.choosenSauce,
    this.drinksModel,
    this.choosenCookStyle,
    this.side,
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
      side: map['side'] ?? false,
      sauce: map['sauce'] ?? false,
      howCook: map['howCook'] ?? false,
      choosenSide: map['choosenSide'] ?? '',
      choosenCookStyle: map['choosenCookStyle'] ?? '',
      choosenSauce: map['choosenSauce'] ?? '',
      sauceModel: SauceModel.fromMap(map),
      sideModel: SideModel.fromMap(map),
      howCookModel: HowCookModel.fromMap(map),
      drinksModel: DrinksModel.fromMap(map),
    );
  }
}
