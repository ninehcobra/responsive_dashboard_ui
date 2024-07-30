import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard_ui/const/constant.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      onSubmitted: (value) async {
        await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('What text did you search?'),
                content: Text(
                    'You typed "$value", which has length ${value.characters.length}.'),
              );
            });
      },
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: 'Search something',
          hintStyle: const TextStyle(color: textGray),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
            size: 21,
          )),
    ));
  }
}
