import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/ui/screens/home/main.screen.dart';
import 'package:responsive_dashboard_ui/ui/screens/signin/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: Colors.grey[200],
          brightness: Brightness.dark),
      home: const SignInScreen(),
    );
  }
}
