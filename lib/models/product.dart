import 'dart:ui';

import 'package:flutter_task/utils/app_images.dart';

class Product {
  final String name;
  final Color color;
  final String assetIcon;

  const Product({
    required this.name,
    required this.color,
    required this.assetIcon,
  });
}

const List<Product> products = [
  Product(
    name: "Tacos",
    color: Color(0XFFD0E6A5),
    assetIcon: AppImages.tacos,
  ),
  Product(
    name: "Frias",
    color: Color(0XFF86E3CE),
    assetIcon: AppImages.frias,
  ),
  Product(
    name: "Burger",
    color: Color(0XFFFFDD95),
    assetIcon: AppImages.burger2,
  ),
  Product(
    name: "Pizza",
    color: Color(0XFFFFACAC),
    assetIcon: AppImages.pizza,
  ),
  Product(
    name: "Burritos",
    color: Color(0XffCCAAD9),
    assetIcon: AppImages.burritos,
  ),
];
