import 'package:dio/dio.dart';
import 'product_model.dart';

class ProductRemoteDataSource {
  final Dio _dio;

  ProductRemoteDataSource(this._dio);

  Future<List<ProductModel>> fetchProducts() async {
    try {
      // DummyJSON endpoint for products
      final response = await _dio.get('https://dummyjson.com/products');
      
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['products'];
        
        // Mapping the JSON list to our Freezed models
        return data.map((json) => ProductModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } on DioException catch (e) {
      // Dio gives you excellent error details out of the box
      throw Exception('Network error: ${e.message}');
    }
  }
}