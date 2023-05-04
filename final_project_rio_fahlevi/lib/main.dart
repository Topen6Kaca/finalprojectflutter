import 'package:flutter/material.dart';
import 'package:sanber_app_flutter/Final_Project/main/LoginScreen.dart';
import 'package:sanber_app_flutter/Final_Project/main/CardProfile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Application Rio "Pinky App"',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginScreen(),
    );
  }
}
