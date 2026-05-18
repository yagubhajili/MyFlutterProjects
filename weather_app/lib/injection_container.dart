import 'package:get_it/get_it.dart';
import 'core/network/dio_client.dart';
import 'features/weather/data/datasources/weather_remote_data_source.dart';
import 'features/weather/data/repositories/weather_repository_impl.dart';
import 'features/weather/domain/repositories/weather_repository.dart';
import 'features/weather/domain/usecases/get_current_weather.dart';
import 'features/weather/domain/usecases/get_forecast.dart';
import 'features/weather/presentation/cubit/weather_cubit.dart';

final sl = GetIt.instance;

void initDependencies() {
  // Cubit
  sl.registerFactory(
    () => WeatherCubit(
      getCurrentWeather: sl(),
      getForecast: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetCurrentWeather(sl()));
  sl.registerLazySingleton(() => GetForecast(sl()));

  // Repository
  sl.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<WeatherRemoteDataSource>(
    () => WeatherRemoteDataSourceImpl(dio: sl()),
  );

  // Network
  sl.registerLazySingleton(() => DioClient().dio);
}
