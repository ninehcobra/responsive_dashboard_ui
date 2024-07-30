import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/const/constant.dart';
import 'package:responsive_dashboard_ui/data/activity_data.dart';
import 'package:responsive_dashboard_ui/ui/common/custom_card.dart';

class ActivityDetailCards extends StatelessWidget {
  const ActivityDetailCards({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ActivityData().data;
    return GridView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 15, mainAxisSpacing: 12),
      itemBuilder: (context, index) {
        return CustomCard(
          color: backgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                data[index].iconImage,
                height: 44,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    data[index].value,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
              Text(
                data[index].title,
                style: const TextStyle(color: textGray, fontSize: 14),
              )
            ],
          ),
        );
      },
    );
  }
}
