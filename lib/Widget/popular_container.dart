import 'package:flutter/material.dart';
import 'package:flutter_task/Widget/navigation_container.dart';

class popularesContainer extends StatelessWidget {
  final String imgPath;
  final String productName;
  final String productdiscreption;
  final String price;

  const popularesContainer({
    Key? key,
    required this.imgPath,
    required this.productName,
    required this.productdiscreption,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 220,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(0, 4),
                blurRadius: 8,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.favorite_border_outlined)],
              ),
              Image.asset(
                imgPath,
                height: 120,
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productName),
                      Text(
                        productdiscreption,
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "\$ $price",
                        style: const TextStyle(
                            color: Color(0XFF153E73), fontSize: 14),
                      )
                    ],
                  ),
                  const Spacer(),
                  const NavigationContainer()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
