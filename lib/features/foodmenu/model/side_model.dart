class SideModel {
  int? sidePrice;
  String? sideName;
  SideModel({
    this.sidePrice,
    this.sideName,
  });
  factory SideModel.fromMap(Map<String, dynamic> map) {
    return SideModel(
      sideName: map['sideName'] ?? '',
      sidePrice: map['price']?.toInt() ?? 0,
    );
  }
}
