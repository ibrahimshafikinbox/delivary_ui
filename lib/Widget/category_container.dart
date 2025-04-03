import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final Color color;
  final String imgPath;
  final String categoryName;

  const CategoryContainer({
    Key? key,
    required this.color,
    required this.imgPath,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(12)),
            height: 80,
            width: 80,
            child: Center(
                child: Image.asset(
              imgPath,
              height: 55,
            )),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            categoryName,
            style: const TextStyle(color: Color(0XFF153E73), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
