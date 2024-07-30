import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard_ui/const/constant.dart';
import 'package:responsive_dashboard_ui/data/line_chart_data.dart';
import 'package:responsive_dashboard_ui/ui/common/custom_card.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return CustomCard(
        padding: const EdgeInsets.all(16),
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Overview',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            AspectRatio(
              aspectRatio: 16 / 6,
              child: LineChart(LineChartData(
                  lineTouchData:
                      const LineTouchData(handleBuiltInTouches: true),
                  gridData: const FlGridData(show: false),
                  titlesData: FlTitlesData(
                      rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                return data.leftTitle[value.toInt()] != null
                                    ? Text(
                                        data.leftTitle[value.toInt()]
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      )
                                    : const SizedBox();
                              },
                              interval: 1,
                              reservedSize: 40)),
                      bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                return data.leftTitle[value.toInt()] != null
                                    ? Text(
                                        data.leftTitle[value.toInt()]
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      )
                                    : const SizedBox();
                              },
                              interval: 1,
                              reservedSize: 40))),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                        color: highlightText,
                        barWidth: 2.5,
                        belowBarData: BarAreaData(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  highlightText.withOpacity(0.5),
                                  Colors.transparent
                                ]),
                            show: true),
                        dotData: const FlDotData(show: false),
                        spots: data.spots)
                  ],
                  minX: 0,
                  maxX: 120,
                  maxY: 105,
                  minY: 0)),
            )
          ],
        ));
  }
}
