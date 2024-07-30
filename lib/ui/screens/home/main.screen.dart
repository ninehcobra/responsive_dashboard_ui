import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/const/constant.dart';
import 'package:responsive_dashboard_ui/ui/screens/home/widgets/dashboard.dart';
import 'package:responsive_dashboard_ui/ui/screens/home/widgets/side_bar_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Row(
      children: [
        const Expanded(flex: 2, child: SideBarMenu()),
        const Expanded(flex: 7, child: Dashboard()),
        Expanded(flex: 3, child: Container())
      ],
    )));
  }
}
