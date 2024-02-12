class SauceModel {
  int? saucePrice;
  String? sauceName;
  SauceModel({
    this.saucePrice,
    this.sauceName,
  });
  factory SauceModel.fromMap(Map<String, dynamic> map) {
    return SauceModel(
      saucePrice: map['saucePrice']?.toInt() ?? 0,
      sauceName: map['sauceName'] ?? "",
    );
  }
}
