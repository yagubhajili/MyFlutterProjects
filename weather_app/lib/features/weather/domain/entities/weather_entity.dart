import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final String cityName;
  final String country;
  final double temperature;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int humidity;
  final double windSpeed;
  final String description;
  final String main;
  final String icon;
  final int pressure;
  final int visibility;
  final DateTime sunrise;
  final DateTime sunset;

  const WeatherEntity({
    required this.cityName,
    required this.country,
    required this.temperature,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.humidity,
    required this.windSpeed,
    required this.description,
    required this.main,
    required this.icon,
    required this.pressure,
    required this.visibility,
    required this.sunrise,
    required this.sunset,
  });

  @override
  List<Object> get props => [
        cityName,
        country,
        temperature,
        feelsLike,
        tempMin,
        tempMax,
        humidity,
        windSpeed,
        description,
        main,
        icon,
        pressure,
        visibility,
        sunrise,
        sunset,
      ];
}
