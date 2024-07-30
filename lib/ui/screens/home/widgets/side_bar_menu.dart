import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/const/constant.dart';
import 'package:responsive_dashboard_ui/data/side_menu_data.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: ListView.builder(
          itemCount: data.menu.length,
          itemBuilder: (context, index) {
            return buildMenuEntry(data, index);
          },
        ));
  }

  Widget buildMenuEntry(SideMenuData data, int index) {
    bool isSelected = selectedIndex == index;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isSelected ? backgroundColor : Colors.transparent),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                data.menu[index].icon,
                color: !isSelected ? Colors.black : primaryColor,
                size: 24,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                color: !isSelected ? Colors.black : primaryColor,
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
