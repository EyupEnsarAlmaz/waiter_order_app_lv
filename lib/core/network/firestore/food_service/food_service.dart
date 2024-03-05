import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/drinks_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/howcook_model.dart';
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

  Future<List?>? getSidesFromFirestore() async {
    final List<SauceModel> sauceList = [];
    final List<SideModel> sideList = [];
    final List<HowCookModel> howCookList = [];

    List<QuerySnapshot> results = await Future.wait([
      FirebaseFirestore.instance.collection('Sauce').get(),
      FirebaseFirestore.instance.collection('Side').get(),
      FirebaseFirestore.instance.collection('CookStyle').get(),
    ]);

    try {
      if (results.isNotEmpty) {
        for (QuerySnapshot result in results) {
          if (result.docs.isNotEmpty) {
            for (QueryDocumentSnapshot doc in result.docs) {
              if (doc.exists) {
                final Map<String, dynamic> data =
                    doc.data() as Map<String, dynamic>;
                if (result == results[0]) {
                  sauceList.add(SauceModel.fromMap(data));
                } else if (result == results[1]) {
                  sideList.add(SideModel.fromMap(data));
                } else if (result == results[2]) {
                  howCookList.add(HowCookModel.fromMap(data));
                }
              }
            }
          }
        }
      }
    } catch (e) {
      print("Hata oluştu: $e");
      return null;
    }
    return [sauceList, sideList, howCookList];
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

  Future<List<DrinksModel>?>? getDrinksFromFirestore() async {
    final List<DrinksModel> drinksList = [];

    var querySnapshot = await _firestore.collection("Drinks").get();

    for (var document in querySnapshot.docs) {
      var drinks = DrinksModel.fromMap(document.data());
      drinksList.add(drinks);
    }
    return drinksList;
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
