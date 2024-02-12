import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/sauce_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/side_model.dart';

class FoodService {
  FoodService._();
  static final shared = FoodService._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<FoodModel>?>? getFoodFromFirestore(
      {required String colletionName}) async {
    final List<FoodModel> foodList = [];

    var querySnapshot = await _firestore.collection(colletionName).get();

    for (var document in querySnapshot.docs) {
      var food = FoodModel.fromMap(document.data());
      foodList.add(food);
    }
    return foodList;
  }

  Future<List<SauceModel>?>? getSauceFromFirestore() async {
    final List<SauceModel> sauceList = [];

    var querySnapshot = await _firestore.collection("Sauce").get();

    for (var document in querySnapshot.docs) {
      var sauce = SauceModel.fromMap(document.data());
      sauceList.add(sauce);
    }
    return sauceList;
  }

  Future<List<SideModel>?>? getSideFromFirestore() async {
    final List<SideModel> sideList = [];

    var querySnapshot = await _firestore.collection("Side").get();

    for (var document in querySnapshot.docs) {
      var sauce = SideModel.fromMap(document.data());
      sideList.add(sauce);
    }
    return sideList;
  }

  Future<List<FoodModel>?>? getFoodByCategory(
      {required String colletionName, required String category}) async {
    final List<FoodModel> foodList = [];

    var querySnapshot = await _firestore
        .collection(colletionName)
        .where('category', isEqualTo: category)
        .get();

    for (var document in querySnapshot.docs) {
      var food = FoodModel.fromMap(document.data());
      foodList.add(food);
    }
    return foodList;
  }
}
