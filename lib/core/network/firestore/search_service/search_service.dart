import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:waiter_order_app_lv/features/foodmenu/model/food_model.dart';

class SearchService {
  SearchService._();
  static final shared = SearchService._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<FoodModel>> getFoodSuggestions({required String prefix}) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection('Food')
        .where('foodName', isGreaterThanOrEqualTo: prefix)
        .where('foodName', isLessThanOrEqualTo: prefix + '\uf8ff')
        .get();

    List<FoodModel> foodSuggestions = querySnapshot.docs
        .map((doc) => FoodModel(
              name: doc['foodName'] as String,
              price: doc['price'].toInt() as int,
              image: doc['foodimage'] as String,
              category: doc['category'] as String,
              content: doc['content'] as String,
              side: doc['side'] as bool?,
              sauce: doc['sauce'] as bool?,
              howCook: doc['howCook'] as bool?,
            ))
        .toList();

    return foodSuggestions;
  }
}
