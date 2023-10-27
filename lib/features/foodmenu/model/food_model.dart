class FoodModel {
  String foodImage;
  String foodName;
  int price;
  String category;
  FoodModel({
    required this.foodImage,
    required this.foodName,
    required this.price,
    required this.category,
  });
  factory FoodModel.fromMap(Map<String, dynamic> map) {
    return FoodModel(
      foodImage: map['foodimage'] ?? '',
      foodName: map['foodName'] ?? '',
      price: map['price']?.toInt() ?? 0,
      category: map['category'] ?? '',
    );
  }
}
