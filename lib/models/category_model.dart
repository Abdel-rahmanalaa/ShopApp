import 'package:flutter/material.dart';
import 'package:storeapp/ui/shared/consts.dart';

class Category {
  final String? title, icon;

  Category({@required this.title, @required this.icon});
}

// for testing
List<Category> demo_categories = [
  Category(
    title: dressText,
    icon: dressIcon,
  ),
  Category(
    title: shirtText,
    icon: shirtIcon,
  ),
  Category(
    title: pantsText,
    icon: pantsIcon,
  ),
  Category(
    title: tShirtText,
    icon: tShirtIcon,
  ),
];

List<Category> categoryList = [
  Category(icon: laptopElectronicsIcon),
  Category(icon: ringJewelIcon),
  Category(
    icon: shirtIcon,
  ),
  Category(icon: dressIcon),
];
