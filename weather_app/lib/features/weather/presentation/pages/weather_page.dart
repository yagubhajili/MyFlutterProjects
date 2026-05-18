import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/wmo_mapper.dart';
import '../cubit/weather_cubit.dart';
import '../cubit/weather_state.dart';
import '../widgets/weather_detail_row.dart';
import '../widgets/forecast_list.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _searchController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _search() {
    final city = _searchController.text.trim();
    if (city.isNotEmpty) {
      _focusNode.unfocus();
      context.read<WeatherCubit>().fetchWeather(city);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        final gradient = state is WeatherLoaded
            ? AppTheme.gradientForCondition(state.weather.main)
            : [const Color(0xFF1A237E), const Color(0xFF283593)];

        return Scaffold(
          body: AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: gradient,
              ),
            ),
            child: SafeArea(
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                    sliver: SliverToBoxAdapter(
                      child: _SearchBar(
                        controller: _searchController,
                        focusNode: _focusNode,
                        onSearch: _search,
                      ),
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
                      child: _buildBody(state),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBody(WeatherState state) {
    if (state is WeatherInitial) {
      return const _EmptyState();
    }
    if (state is WeatherLoading) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.white),
      );
    }
    if (state is WeatherError) {
      return _ErrorState(message: state.message);
    }
    if (state is WeatherLoaded) {
      return _WeatherContent(state: state);
    }
    return const SizedBox.shrink();
  }
}

class _SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback onSearch;

  const _SearchBar({
    required this.controller,
    required this.focusNode,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        style: const TextStyle(color: Colors.white, fontSize: 16),
        textInputAction: TextInputAction.search,
        onSubmitted: (_) => onSearch(),
        decoration: InputDecoration(
          hintText: 'Search city...',
          hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.6)),
          prefixIcon: const Icon(Icons.search, color: Colors.white70),
          suffixIcon: IconButton(
            icon: const Icon(Icons.arrow_forward_ios,
                color: Colors.white70, size: 18),
            onPressed: onSearch,
          ),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        ),
      ),
    );
  }
}

class _WeatherContent extends StatelessWidget {
  final WeatherLoaded state;

  const _WeatherContent({required this.state});

  @override
  Widget build(BuildContext context) {
    final weather = state.weather;
    final wmoCode = int.tryParse(weather.icon) ?? 0;
    final sunriseStr = DateFormat('HH:mm').format(weather.sunrise);
    final sunsetStr = DateFormat('HH:mm').format(weather.sunset);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // City & date
        Text(
          '${weather.cityName}, ${weather.country}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Text(
          DateFormat('EEEE, d MMMM').format(DateTime.now()),
          style: const TextStyle(color: Colors.white70, fontSize: 14),
        ),
        const SizedBox(height: 8),

        // Weather icon
        Icon(wmoToIcon(wmoCode), color: Colors.white, size: 100),

        // Temperature
        Text(
          '${weather.temperature.round()}°C',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 72,
            fontWeight: FontWeight.w200,
            height: 1,
          ),
        ),
        const SizedBox(height: 8),

        // Description
        Text(
          weather.description.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            letterSpacing: 2,
            fontWeight: FontWeight.w500,
          ),
        ),

        // Min / Max
        const SizedBox(height: 6),
        Text(
          '${weather.tempMin.round()}° / ${weather.tempMax.round()}°',
          style: const TextStyle(color: Colors.white70, fontSize: 15),
        ),

        const SizedBox(height: 24),

        // Detail row
        WeatherDetailRow(
          feelsLike: weather.feelsLike,
          humidity: weather.humidity,
          windSpeed: weather.windSpeed,
          pressure: weather.pressure,
        ),

        const SizedBox(height: 16),

        // Sunrise / Sunset
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _SunTime(icon: Icons.wb_sunny_outlined, label: 'Sunrise', time: sunriseStr),
              Container(
                width: 1,
                height: 36,
                color: Colors.white.withValues(alpha: 0.3),
              ),
              _SunTime(icon: Icons.nights_stay_outlined, label: 'Sunset', time: sunsetStr),
            ],
          ),
        ),

        const SizedBox(height: 24),

        // Forecast
        ForecastList(forecast: state.forecast),
      ],
    );
  }
}

class _SunTime extends StatelessWidget {
  final IconData icon;
  final String label;
  final String time;

  const _SunTime({
    required this.icon,
    required this.label,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white70, size: 20),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style:
                    const TextStyle(color: Colors.white60, fontSize: 11)),
            Text(time,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
          ],
        ),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.cloud_outlined, size: 80, color: Colors.white38),
        SizedBox(height: 16),
        Text(
          'Search for a city\nto see the weather',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white54, fontSize: 18),
        ),
      ],
    );
  }
}

class _ErrorState extends StatelessWidget {
  final String message;

  const _ErrorState({required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline, size: 64, color: Colors.white54),
        const SizedBox(height: 16),
        Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ],
    );
  }
}
