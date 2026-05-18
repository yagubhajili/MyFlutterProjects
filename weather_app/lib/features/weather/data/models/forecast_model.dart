import '../../domain/entities/forecast_entity.dart';

class ForecastModel extends ForecastEntity {
  const ForecastModel({required super.items});
}

class ForecastItemModel extends ForecastItemEntity {
  const ForecastItemModel({
    required super.dateTime,
    required super.temperature,
    required super.tempMin,
    required super.tempMax,
    required super.description,
    required super.main,
    required super.icon,
    required super.humidity,
    required super.windSpeed,
  });
}
