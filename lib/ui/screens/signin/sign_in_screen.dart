import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/const/constant.dart';
import 'package:responsive_dashboard_ui/ui/screens/signin/widgets/login_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Center(
            child: Text(
          'Sign In',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      body: Container(
        child: LoginForm(),
      ),
    );
  }
}
