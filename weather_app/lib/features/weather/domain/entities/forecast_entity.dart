import 'package:equatable/equatable.dart';

class ForecastEntity extends Equatable {
  final List<ForecastItemEntity> items;

  const ForecastEntity({required this.items});

  @override
  List<Object> get props => [items];
}

class ForecastItemEntity extends Equatable {
  final DateTime dateTime;
  final double temperature;
  final double tempMin;
  final double tempMax;
  final String description;
  final String main;
  final String icon;
  final int humidity;
  final double windSpeed;

  const ForecastItemEntity({
    required this.dateTime,
    required this.temperature,
    required this.tempMin,
    required this.tempMax,
    required this.description,
    required this.main,
    required this.icon,
    required this.humidity,
    required this.windSpeed,
  });

  @override
  List<Object> get props => [
        dateTime,
        temperature,
        tempMin,
        tempMax,
        description,
        main,
        icon,
        humidity,
        windSpeed,
      ];
}
