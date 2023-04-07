import 'dart:convert';

import 'package:shop_application/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductServices {
  Future<List<ProductModel>> getAllProduct() async {
    List<ProductModel> allProductsList = [];

    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      List<dynamic> responseData = jsonDecode(response.body);

      for (int i = 0; i < responseData.length; i++) {
        allProductsList.add(
          ProductModel.fromJson(responseData[i]),
        );
      }
      return allProductsList;
    } else {
      throw Exception('status code is ${response.statusCode}');
    }
  }
}
