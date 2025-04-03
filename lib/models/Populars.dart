import 'package:flutter_task/utils/app_images.dart';

const List<Populars> populares = [
  Populars(
    price: "12.58",
    name: "Pizza Clásica",
    assetIcon: AppImages.pizzaClassic,
    discreption: 'Salsa clásica de la casa',
  ),
  Populars(
    discreption: "Doble carne con queso",
    price: "2.58",
    name: "Hamburguesa mix",
    assetIcon: AppImages.hamburguesaMix,
  ),
];

class Populars {
  final String name;
  final String discreption;

  final String assetIcon;
  final String price;

  const Populars({
    required this.name,
    required this.discreption,
    required this.price,
    required this.assetIcon,
  });
}
