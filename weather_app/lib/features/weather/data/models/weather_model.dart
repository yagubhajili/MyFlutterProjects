import '../../domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity {
  const WeatherModel({
    required super.cityName,
    required super.country,
    required super.temperature,
    required super.feelsLike,
    required super.tempMin,
    required super.tempMax,
    required super.humidity,
    required super.windSpeed,
    required super.description,
    required super.main,
    required super.icon,
    required super.pressure,
    required super.visibility,
    required super.sunrise,
    required super.sunset,
  });
}
