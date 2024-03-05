import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

class BasketService {
  BasketService._();
  static final shared = BasketService._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void sendOrderToDatabase(
      {required int tableNumber, required List<FoodModel> basketItem}) {
    Map<String, List<FoodModel>> groupedItems = {};

    for (var item in basketItem) {
      if (groupedItems.containsKey(item.name)) {
        groupedItems[item.name]!.add(item);
      } else {
        groupedItems[item.name!] = [item];
      }
    }

    groupedItems.forEach((foodName, foodList) {
      int itemCount = foodList.length;

      FirebaseFirestore.instance
          .collection('table')
          .doc('$tableNumber')
          .collection('orderList')
          .add({
        'foodImage': foodList[0].image,
        'foodName': foodList[0].name,
        'category': foodList[0].category,
        'price': foodList[0].price,
        'quantity': itemCount, // Yemek miktarını ekledik
        // Diğer alanları ekleyebilirsiniz
      }).then((DocumentReference document) {
        print('İç içe belge eklendi: ${document.id}');
      }).catchError((error) {
        print('Hata: $error');
      });
    });
  }
}
