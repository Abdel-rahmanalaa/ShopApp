import 'package:flutter/material.dart';
import 'package:storeapp/shared/consts.dart';

class Product {
  final String image;
  final String title;
  final int price;
  final Color biColor;

  Product(
      {required this.image,
      required this.title,
      required this.price,
      this.biColor = const Color(0xFFEFEFF2)});
}

List<Product> demo_Product = [
  Product(
    image: product0,
    title: productText0,
    price: 165,
    biColor: const Color(0xFFFEFBF9),
  ),
  Product(image: product1, title: productText0, price: 99),
  Product(
    image: product2,
    title: productText0,
    price: 180,
    biColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: product3,
    title: productText0,
    price: 149,
    biColor: const Color(0xFFEEEEED),
  ),
];
