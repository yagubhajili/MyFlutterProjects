import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/utils/wmo_mapper.dart';
import '../../domain/entities/forecast_entity.dart';

class ForecastList extends StatelessWidget {
  final ForecastEntity forecast;

  const ForecastList({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    final items = forecast.items.take(5).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            '5-Day Forecast',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            separatorBuilder: (context, index) => Divider(
              color: Colors.white.withValues(alpha: 0.1),
              height: 1,
            ),
            itemBuilder: (context, index) => _ForecastTile(item: items[index]),
          ),
        ),
      ],
    );
  }
}

class _ForecastTile extends StatelessWidget {
  final ForecastItemEntity item;

  const _ForecastTile({required this.item});

  @override
  Widget build(BuildContext context) {
    final dayName = DateFormat('EEEE').format(item.dateTime);
    final wmoCode = int.tryParse(item.icon) ?? 0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          SizedBox(
            width: 90,
            child: Text(
              dayName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(wmoToIcon(wmoCode), color: Colors.white70, size: 28),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              item.description,
              style: const TextStyle(color: Colors.white70, fontSize: 13),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            children: [
              Text(
                '${item.tempMin.round()}°',
                style: const TextStyle(color: Colors.white54, fontSize: 14),
              ),
              const SizedBox(width: 6),
              Text(
                '${item.tempMax.round()}°',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
