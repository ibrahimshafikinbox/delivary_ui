import 'package:flutter/material.dart';
import 'package:flutter_task/Widget/popular_container.dart';
import 'package:flutter_task/models/Populars.dart';

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: populares.length,
        itemBuilder: (context, index) {
          return popularesContainer(
              imgPath: populares[index].assetIcon,
              productName: populares[index].name,
              price: populares[index].price,
              productdiscreption: populares[index].discreption);
        },
      ),
    );
  }
}
