import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:waiter_order_app_lv/features/table/model/table_model.dart';

class TableService {
  TableService._();
  static final shared = TableService._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<TableModel>?>? getTableFromFirestore() async {
    final List<TableModel> tableList = [];

    var querySnapshot = await _firestore.collection('table').get();

    for (var document in querySnapshot.docs) {
      var food = TableModel.fromMap(document.data());
      tableList.add(food);
    }
    return tableList;
  }

  Future<List<TableModel>?>? openTable(
      {required int tableNumber, required bool isOpen}) async {
    try {
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('table').doc('$tableNumber');

      await documentReference.update({
        'isOpen': isOpen,
      });
    } catch (e) {
      print('Error updating boolean field: $e');
    }
  }

  Future<List<TableModel>?>? closeTable(
      {required int tableNumber, required bool isOpen}) async {
    try {
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('table').doc('$tableNumber');

      await documentReference.update({
        'isOpen': isOpen,
      });
    } catch (e) {
      print('Error updating boolean field: $e');
    }
  }
}
