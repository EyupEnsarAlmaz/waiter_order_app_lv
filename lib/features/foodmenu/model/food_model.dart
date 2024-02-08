import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';

 class FoodModel {
  String? foodImage;
  String? foodName;
  String? content;
  String? choosenSide;
  bool? sides;
  bool? sauce;
  bool? howCook;
  int? price;
  String? category;
  SideModel? sideModel;
  FoodModel({
    this.foodImage,
    this.sauce,
    this.howCook,
    this.sideModel,
    this.choosenSide,
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
      sideModel: SideModel.fromMap(map),
    );
  }
}
