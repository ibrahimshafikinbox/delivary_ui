import 'package:flutter/material.dart';
import 'package:flutter_task/View/cart.dart';
import 'package:flutter_task/View/first.dart';
import 'package:flutter_task/View/main_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
