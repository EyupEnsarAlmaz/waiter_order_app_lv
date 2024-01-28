import 'package:cloud_firestore/cloud_firestore.dart';

class SearchService {
  SearchService._();
  static final shared = SearchService._();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<String>> searchItems({required String query}) async {
    try {
      QuerySnapshot result = await _firestore
          .collection('Food')
          .where('foodName', isGreaterThanOrEqualTo: query)
          .where('foodName', isLessThan: query + 'z')
          .get();

      List<String> items =
          result.docs.map((doc) => doc['foodName'] as String).toList();
      return items;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
