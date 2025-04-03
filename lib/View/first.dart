import 'package:flutter/material.dart';
import 'package:flutter_task/Widget/category_list.dart';
import 'package:flutter_task/Widget/header.dart';
import 'package:flutter_task/Widget/popular_list.dart';
import 'package:flutter_task/Widget/recommended_list.dart';
import 'package:flutter_task/Widget/section_title.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Header(),
              SizedBox(height: 30),
              SectionTitle(title: "Explorar categorias", action: "Ver todos"),
              CategoryList(),
              SectionTitle(title: "Productos populares"),
              PopularList(),
              SectionTitle(title: "Recomendados"),
              RecommendedList(),
            ],
          ),
        ),
      ),
    );
  }
}
