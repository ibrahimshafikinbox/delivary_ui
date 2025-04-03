import 'package:flutter/material.dart';
import 'package:flutter_task/Widget/recommended_item.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return const RecommendedItem();
        },
      ),
    );
  }
}
