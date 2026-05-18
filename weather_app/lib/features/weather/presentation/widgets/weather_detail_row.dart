import 'package:flutter/material.dart';

class WeatherDetailRow extends StatelessWidget {
  final double feelsLike;
  final int humidity;
  final double windSpeed;
  final int pressure;

  const WeatherDetailRow({
    super.key,
    required this.feelsLike,
    required this.humidity,
    required this.windSpeed,
    required this.pressure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _DetailCard(
            icon: Icons.thermostat_outlined,
            label: 'Feels Like',
            value: '${feelsLike.round()}°',
          ),
          _DetailCard(
            icon: Icons.water_drop_outlined,
            label: 'Humidity',
            value: '$humidity%',
          ),
          _DetailCard(
            icon: Icons.air,
            label: 'Wind',
            value: '${windSpeed.toStringAsFixed(1)} m/s',
          ),
          _DetailCard(
            icon: Icons.speed,
            label: 'Pressure',
            value: '${pressure}hPa',
          ),
        ],
      ),
    );
  }
}

class _DetailCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white70, size: 22),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white60, fontSize: 11),
        ),
      ],
    );
  }
}
