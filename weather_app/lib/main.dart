import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/theme/app_theme.dart';
import 'features/weather/presentation/cubit/weather_cubit.dart';
import 'features/weather/presentation/pages/weather_page.dart';
import 'injection_container.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => sl<WeatherCubit>(),
        child: const WeatherPage(),
      ),
    );
  }
}
