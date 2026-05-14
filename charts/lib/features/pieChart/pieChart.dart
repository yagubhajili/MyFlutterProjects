// import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:charts/features/indicator/indicator.dart';
import 'package:fl_chart/fl_chart.dart';
// import 'package:fl_chart_app/presentation/widgets/indicator.dart';
import 'package:flutter/material.dart';

class PiechartPage extends StatefulWidget {
  const PiechartPage({super.key});

  @override
  State<StatefulWidget> createState() => PiechartState();
}

class PiechartState extends State<PiechartPage> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Row(
        children: <Widget>[
          const SizedBox(height: 18),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!
                            .touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Indicator(
                color: Color(0xff0293ee),
                text: 'First',
                isSquare: true,
              ),
              SizedBox(height: 4),
              Indicator(
                color: Color(0xffffc260),
                text: 'Second',
                isSquare: true,
              ),
              SizedBox(height: 4),
              Indicator(
                color: Color(0xff99c260),
                text: 'Third',
                isSquare: true,
              ),
              SizedBox(height: 4),
              Indicator(
                color: Color(0xff4caf50),
                text: 'Fourth',
                isSquare: true,
              ),
              SizedBox(height: 18),
            ],
          ),
          const SizedBox(width: 28),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.white, blurRadius: 2)];
      return switch (i) {
        0 => PieChartSectionData(
          color: Color(0xff0293ee),
          value: 40,
          title: '40%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
            shadows: shadows,
          ),
        ),
        1 => PieChartSectionData(
          color: Color(0xffffc260),
          value: 30,
          title: '30%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
            shadows: shadows,
          ),
        ),
        2 => PieChartSectionData(
          color: Color(0xff99c260),
          value: 15,
          title: '15%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
            shadows: shadows,
          ),
        ),
        3 => PieChartSectionData(
          color: Color(0xff4caf50),
          value: 15,
          title: '15%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
            shadows: shadows,
          ),
        ),
        _ => throw StateError('Invalid'),
      };
    });
  }
}

// import 'package:flutter/material.dart';
