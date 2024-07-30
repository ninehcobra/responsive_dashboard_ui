import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/model/side_menu_model.dart';

class SideMenuData {
  final menu = const <SideMenuModel>[
    SideMenuModel(icon: Icons.home, title: 'Home'),
    SideMenuModel(icon: Icons.account_box, title: 'User'),
    SideMenuModel(icon: Icons.history, title: 'History'),
    SideMenuModel(icon: Icons.settings, title: 'Setting'),
    SideMenuModel(icon: Icons.logout, title: 'Sign out'),
  ];
}
