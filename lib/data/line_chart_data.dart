import 'package:fl_chart/fl_chart.dart';

class LineData {
  final spots = const [
    FlSpot(1.68, 0),
    FlSpot(15.2, 23),
    FlSpot(23.4, 33.12),
    FlSpot(33.2, 45.2),
    FlSpot(44.2, 91.23),
    FlSpot(49.3, 91.3),
    FlSpot(60.1, 83),
    FlSpot(71.3, 100),
    FlSpot(82, 38.04),
    FlSpot(89, 97.04),
    FlSpot(93, 76.04),
    FlSpot(99, 12.04),
    FlSpot(100, 10),
    FlSpot(111, 23),
  ];

  final leftTitle = {
    0: '0',
    20: '2K',
    40: '4K',
    60: '6K',
    80: '8K',
    100: '10K',
  };

  final bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };
}
