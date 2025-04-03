import 'package:flutter/material.dart';
import 'package:flutter_task/Widget/category_container.dart';
import 'package:flutter_task/models/product.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return CategoryContainer(
            color: products[index].color,
            imgPath: products[index].assetIcon,
            categoryName: products[index].name,
          );
        },
      ),
    );
  }
}
