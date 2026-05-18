import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_current_weather.dart';
import '../../domain/usecases/get_forecast.dart';
import 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final GetCurrentWeather getCurrentWeather;
  final GetForecast getForecast;

  WeatherCubit({
    required this.getCurrentWeather,
    required this.getForecast,
  }) : super(const WeatherInitial());

  Future<void> fetchWeather(String cityName) async {
    if (cityName.trim().isEmpty) return;
    emit(const WeatherLoading());

    final weatherResult = await getCurrentWeather(cityName.trim());
    final forecastResult = await getForecast(cityName.trim());

    weatherResult.fold(
      (failure) => emit(WeatherError(message: failure.message)),
      (weather) => forecastResult.fold(
        (failure) => emit(WeatherError(message: failure.message)),
        (forecast) => emit(WeatherLoaded(weather: weather, forecast: forecast)),
      ),
    );
  }
}
