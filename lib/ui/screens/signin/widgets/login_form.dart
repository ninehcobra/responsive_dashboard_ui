import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/const/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:responsive_dashboard_ui/firebase_options.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  style: const TextStyle(color: Colors.black),
                  controller: _email,
                  decoration: const InputDecoration(
                    hintText: 'Type your email',
                    hintStyle: TextStyle(color: textGray),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  controller: _password,
                  decoration: const InputDecoration(
                    hintText: 'Type your password',
                    hintStyle: TextStyle(color: textGray),
                  ),
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                    onPressed: () async {
                      final email = _email.text;
                      final password = _password.text;
                      try {
                        final userCredential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password);
                        // Xử lý khi đăng ký thành công
                        print(userCredential);
                      } catch (e) {
                        // Xử lý lỗi
                        if (e is FirebaseAuthException) {
                          switch (e.code) {
                            case 'weak-password':
                              print('Mật khẩu quá yếu.');
                              break;
                            case 'email-already-in-use':
                              print('Email đã được sử dụng.');
                              break;
                            default:
                              print('Lỗi đăng ký: ${e.message}');
                          }
                        } else {
                          print('Lỗi không xác định: $e');
                        }
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
