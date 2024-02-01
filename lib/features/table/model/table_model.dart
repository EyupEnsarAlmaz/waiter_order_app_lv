import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

class TableModel {
  final bool isOpen;
  final bool isAway;
  final String openedBy;
  final List<FoodModel> orderList;
  final int tableNumber;
  TableModel(
      {required this.isOpen,
      required this.openedBy,
      required this.isAway,
      required this.orderList,
      required this.tableNumber});

  factory TableModel.fromMap(Map<String, dynamic> map) {
    return TableModel(
      isOpen: map['isOpen'] ?? '',
      isAway: map['isAway'] ?? '',
      openedBy: map['openedBy'] ?? '',
      orderList: map['orderList'] ?? [],
      tableNumber: map['tableNumber'] ?? '',
    );
  }
}
