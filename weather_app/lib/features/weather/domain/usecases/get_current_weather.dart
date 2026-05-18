import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/weather_entity.dart';
import '../repositories/weather_repository.dart';

class GetCurrentWeather {
  final WeatherRepository repository;

  const GetCurrentWeather(this.repository);

  Future<Either<Failure, WeatherEntity>> call(String cityName) {
    return repository.getCurrentWeather(cityName);
  }
}
