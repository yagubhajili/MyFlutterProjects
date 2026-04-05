import 'package:dio/dio.dart';
import 'package:food_go/features/home/data/model/food_model.dart';

class FoodRepository {
  final Dio _dio = Dio();

  final String baseUrl = 'https://free-food-menus-api-two.vercel.app/';



  Future<Foodmodel> fetchAllFoods() async {

    try {
      final response = await _dio.get('${baseUrl}all');

      if (response.statusCode == 200) {

        return Foodmodel.fromJson(response.data);
      } else {
        throw Exception('Failed to load menu');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
