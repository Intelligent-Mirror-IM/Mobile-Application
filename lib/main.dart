import 'package:flutter/material.dart';
import 'package:project_3/auth/login.dart';
import 'package:project_3/auth/signup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        "Login" : (context) =>  const Login(),
        "SignUp" : (context) =>  const SignUp(),

      }
    );
  }
}