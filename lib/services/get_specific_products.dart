import 'dart:convert';

import 'package:shop_application/models/product_model.dart';
import 'package:http/http.dart' as http;

class SpecificProducts {
  Future<List<ProductModel>> getSpecificProductsByCategory(
      {required String categoryName}) async {
    List<ProductModel> specificProductsList = [];

    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));

    if(response.statusCode == 200)
    {
      List<dynamic> responseData = jsonDecode(response.body);

      for (int i = 0; i < responseData.length; i++) {
        specificProductsList.add(
          ProductModel.fromJson(responseData[i]),
        );
      }
      return specificProductsList;
    }
    else
    {
      throw Exception('status code is ${response.statusCode}');

    }

  }
}
