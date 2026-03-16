import 'package:dio/dio.dart';
import 'package:food_go/features/home/data/model/burger_model.dart';

class BurgerRepository {
  final Dio _dio = Dio();

  Future<List<BurgerModel>> fetchBurgers() async {
    try {
  
      final response = await _dio.get('https://free-food-menus-api-two.vercel.app/burgers');

      if (response.statusCode == 200) {
        List data = response.data;
        return data.map((json) => BurgerModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load burgers');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
