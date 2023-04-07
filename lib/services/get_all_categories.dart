import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategories {
  Future<List<dynamic>> getAllCategories() async {
    http.Response response = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));
    if(response.statusCode == 200)
    {
      List<dynamic> categoriesData = jsonDecode(response.body);
      return categoriesData;
    }
    else {
      throw Exception('status code is ${response.statusCode}');
    }

  }
}
