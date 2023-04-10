import 'package:shop_application/helper/api.dart';
import 'package:shop_application/models/product_model.dart';

class ProductUpdating {
  Future<ProductModel> put({
    required int id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> productData = await Api().post(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      },
      token: null,
    );

    return ProductModel.fromJson(productData);
  }
}
