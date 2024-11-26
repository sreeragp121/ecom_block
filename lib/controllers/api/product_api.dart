import 'dart:convert';
import 'package:block_samble/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'https://fakestoreapi.com/products';

  Future<List<ProductModel>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    switch (response.statusCode) {
      case 200:
        List<dynamic> body = jsonDecode(response.body);
        List<ProductModel> products =
            body.map((dynamic item) => ProductModel.fromJson(item)).toList();
        return products;
      case 400:
        throw Exception('Bad request');
      case 401:
        throw Exception('Unauthorized');
      case 403:
        throw Exception('Forbidden');
      case 404:
        throw Exception('Not found');
      case 500:
        throw Exception('Internal server error');
      default:
        throw Exception('Failed to load products');
    }
  }
}