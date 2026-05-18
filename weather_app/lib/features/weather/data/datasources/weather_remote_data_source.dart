import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/utils/wmo_mapper.dart';
import '../models/weather_model.dart';
import '../models/forecast_model.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherModel> getCurrentWeather(String cityName);
  Future<ForecastModel> getForecast(String cityName);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final Dio dio;

  const WeatherRemoteDataSourceImpl({required this.dio});

  Future<Map<String, dynamic>> _geocode(String cityName) async {
    try {
      final response = await dio.get(
        '${ApiConstants.geocodingBaseUrl}/search',
        queryParameters: {'name': cityName, 'count': 1, 'language': 'en'},
      );
      final results = response.data['results'];
      if (results == null || (results as List).isEmpty) {
        throw const ServerException(message: 'City not found');
      }
      return results[0] as Map<String, dynamic>;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  Future<Map<String, dynamic>> _fetchWeatherData(
      double lat, double lon) async {
    try {
      final response = await dio.get(
        '${ApiConstants.weatherBaseUrl}/forecast',
        queryParameters: {
          'latitude': lat,
          'longitude': lon,
          'current':
              'temperature_2m,relative_humidity_2m,apparent_temperature,weather_code,wind_speed_10m,pressure_msl',
          'daily':
              'weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset',
          'forecast_days': 6,
          'timezone': 'auto',
        },
      );
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  void _handleDioError(DioException e) {
    if (e.type == DioExceptionType.connectionError ||
        e.type == DioExceptionType.connectionTimeout) {
      throw const NetworkException();
    }
    throw ServerException(
      message: e.response?.data?['reason'] ?? 'Server error occurred',
    );
  }

  @override
  Future<WeatherModel> getCurrentWeather(String cityName) async {
    final geo = await _geocode(cityName);
    final lat = (geo['latitude'] as num).toDouble();
    final lon = (geo['longitude'] as num).toDouble();
    final data = await _fetchWeatherData(lat, lon);

    final current = data['current'] as Map<String, dynamic>;
    final daily = data['daily'] as Map<String, dynamic>;
    final wmoCode = current['weather_code'] as int;

    return WeatherModel(
      cityName: geo['name'] as String,
      country: (geo['country_code'] as String?) ?? '',
      temperature: (current['temperature_2m'] as num).toDouble(),
      feelsLike: (current['apparent_temperature'] as num).toDouble(),
      tempMin: (daily['temperature_2m_min'][0] as num).toDouble(),
      tempMax: (daily['temperature_2m_max'][0] as num).toDouble(),
      humidity: current['relative_humidity_2m'] as int,
      windSpeed: (current['wind_speed_10m'] as num).toDouble(),
      description: wmoToDescription(wmoCode),
      main: wmoToMain(wmoCode),
      icon: wmoCode.toString(),
      pressure: (current['pressure_msl'] as num).round(),
      visibility: 0,
      sunrise: DateTime.parse(daily['sunrise'][0] as String),
      sunset: DateTime.parse(daily['sunset'][0] as String),
    );
  }

  @override
  Future<ForecastModel> getForecast(String cityName) async {
    final geo = await _geocode(cityName);
    final lat = (geo['latitude'] as num).toDouble();
    final lon = (geo['longitude'] as num).toDouble();
    final data = await _fetchWeatherData(lat, lon);

    final daily = data['daily'] as Map<String, dynamic>;
    final times = daily['time'] as List<dynamic>;
    final codes = daily['weather_code'] as List<dynamic>;
    final maxTemps = daily['temperature_2m_max'] as List<dynamic>;
    final minTemps = daily['temperature_2m_min'] as List<dynamic>;

    // skip today (index 0), take next 5 days
    final items = List.generate(
      (times.length - 1).clamp(0, 5),
      (i) {
        final idx = i + 1;
        final code = codes[idx] as int;
        return ForecastItemModel(
          dateTime: DateTime.parse(times[idx] as String),
          temperature:
              ((maxTemps[idx] as num) + (minTemps[idx] as num)).toDouble() / 2,
          tempMin: (minTemps[idx] as num).toDouble(),
          tempMax: (maxTemps[idx] as num).toDouble(),
          description: wmoToDescription(code),
          main: wmoToMain(code),
          icon: code.toString(),
          humidity: 0,
          windSpeed: 0,
        );
      },
    );

    return ForecastModel(items: items);
  }
}
