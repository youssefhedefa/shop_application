import 'package:shop_application/helper/api.dart';

class AllCategories {
  Future<List<dynamic>> getAllCategories() async {

      List<dynamic> categoriesData = await Api().get(url: 'https://fakestoreapi.com/products/categories');
      return categoriesData;

  }
}
