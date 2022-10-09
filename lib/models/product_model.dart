import 'package:flutter/material.dart';
import 'package:storeapp/ui/shared/consts.dart';

class ProductModel {
  final dynamic id; //
  final String title;
  final dynamic price;
  final String description; //
  final String image;
  final RatingModel? rating;
  final Color biColor;
  final String category;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    this.biColor = const Color(0xFFEFEFF2),
    required this.category,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      image: jsonData['image'],
      rating: jsonData['rating'] == null
          ? null
          : RatingModel.fromJson(
              jsonData['rating'],
            ),
      category: jsonData['category'],
    );
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}

List<ProductModel> demo_Product = [
  ProductModel(
    id: 00,
    title: productText0,
    price: 165,
    description: 'description',
    image: product0,
    rating: RatingModel(
      rate: 3.7,
      count: 120,
    ),
    biColor: const Color(0xFFFEFBF9),
    category: 'sdss',
  ),
  ProductModel(
    id: 01,
    title: productText0,
    price: 99,
    description: 'description',
    image: product1,
    rating: RatingModel(
      rate: 3.7,
      count: 120,
    ),
    category: 'sds'
  ),
  ProductModel(
    id: 02,
    title: productText0,
    price: 180,
    description: 'description',
    image: product2,
    rating: RatingModel(
      rate: 3.7,
      count: 120,
    ),
    biColor: const Color(0xFFF8FEFB),
    category: 'sd'
  ),
  ProductModel(
    id: 03,
    title: productText0,
    price: 149,
    description: 'description',
    image: product3,
    rating: RatingModel(
      rate: 3.7,
      count: 120,
    ),
    biColor: const Color(0xFFEEEEED),
    category: 's'
  ),
];
