import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/forecast_entity.dart';
import '../repositories/weather_repository.dart';

class GetForecast {
  final WeatherRepository repository;

  const GetForecast(this.repository);

  Future<Either<Failure, ForecastEntity>> call(String cityName) {
    return repository.getForecast(cityName);
  }
}
