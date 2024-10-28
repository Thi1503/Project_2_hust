
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_2_hust/screen/login_screen.dart';
import 'package:project_2_hust/screen/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tuyen sinh app",
      home: LoginScreen(),
    );
  }
}