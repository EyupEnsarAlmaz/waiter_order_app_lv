import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

class FoodService {
  FoodService._();
  static final shared = FoodService._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<FoodModel>?>? getFoodFromFirestore() async {
    final List<FoodModel> foodList = [];

    var querySnapshot = await _firestore.collection('Food').get();

    for (var document in querySnapshot.docs) {
      var food = FoodModel.fromMap(document.data());
      foodList.add(food);
    }
    return foodList;
  }

  Future<List<FoodModel>?>? getFoodByCategory(
      {required String category}) async {
    final List<FoodModel> foodList = [];

    var querySnapshot = await _firestore
        .collection('Food')
        .where('category', isEqualTo: category)
        .get();

    for (var document in querySnapshot.docs) {
      var food = FoodModel.fromMap(document.data());
      foodList.add(food);
    }
    return foodList;
  }
}
