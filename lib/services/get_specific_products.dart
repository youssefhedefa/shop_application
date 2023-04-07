import 'package:shop_application/helper/api.dart';
import 'package:shop_application/models/product_model.dart';

class SpecificProducts {
  Future<List<ProductModel>> getSpecificProductsByCategory({
    required String categoryName,
  }) async {
    List<ProductModel> specificProductsList = [];

    List<dynamic> responseData = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    for (int i = 0; i < responseData.length; i++) {
      specificProductsList.add(
        ProductModel.fromJson(responseData[i]),
      );
    }
    return specificProductsList;
  }
}
