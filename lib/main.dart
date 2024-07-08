import 'package:flutter/material.dart';
import 'package:flutter_navigation_4_6_1/screens/homescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: HomeScreen()),
    );
  }
}
