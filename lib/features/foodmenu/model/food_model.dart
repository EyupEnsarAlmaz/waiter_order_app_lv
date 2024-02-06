class FoodModel {
  String? foodImage;
  String? foodName;
  String? content;
  String? choosenSide;
  bool? sides;
  int? price;
  String? category;
  FoodModel({
    this.foodImage,
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
      choosenSide: map['choosenSide'] ?? '',
    );
  }
}
