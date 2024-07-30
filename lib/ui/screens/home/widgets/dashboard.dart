import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/const/constant.dart';
import 'package:responsive_dashboard_ui/ui/screens/home/widgets/activity_detail_cards.dart';
import 'package:responsive_dashboard_ui/ui/screens/home/widgets/bar_graph_card.dart';
import 'package:responsive_dashboard_ui/ui/screens/home/widgets/dashboard_header.dart';
import 'package:responsive_dashboard_ui/ui/screens/home/widgets/line_chart_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: defaultSizedBoxHeight),
            DashboardHeader(),
            SizedBox(height: defaultSizedBoxHeight),
            ActivityDetailCards(),
            SizedBox(height: defaultSizedBoxHeight),
            LineChartCard(),
            SizedBox(height: defaultSizedBoxHeight),
            BarGraphCard(),
          ],
        ),
      ),
    );
  }
}
