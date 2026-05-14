import 'package:charts/features/lineChart/lineCharPage.dart';
import 'package:charts/features/pieChart/pieChart.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartApp extends StatelessWidget {
  const ChartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Chart')),
      body: ListView(
        children: [
          SizedBox(height: 300, child: PiechartPage()),
          // PiechartPage(),
          SizedBox(height: 300, child: MyLineChart()),
        ],
      ),
    );
  }
}
