import 'package:shop_application/helper/api.dart';
import 'package:shop_application/models/product_model.dart';

class AllProductServices {
  Future<List<ProductModel>> getAllProduct() async {
    List<ProductModel> allProductsList = [];

      List<dynamic> responseData = await Api().get(url: 'https://fakestoreapi.com/products',token: null);

      for (int i = 0; i < responseData.length; i++) {
        allProductsList.add(
          ProductModel.fromJson(responseData[i]),
        );
      }
      return allProductsList;
  }
}
