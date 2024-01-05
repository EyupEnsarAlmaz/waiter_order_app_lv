class TableModel {
  final bool isOpen;
  final String openedBy;
  final String orderList;
  final int tableNumber;

  TableModel(
      {required this.isOpen,
      required this.openedBy,
      required this.orderList,
      required this.tableNumber});

  factory TableModel.fromMap(Map<String, dynamic> map) {
    return TableModel(
      isOpen: map['isOpen'] ?? '',
      openedBy: map['openedBy'] ?? '',
      orderList: map['orderList'] ?? '',
      tableNumber: map['tableNumber'] ?? '',
    );
  }
}
