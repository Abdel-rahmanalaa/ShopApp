import 'package:storeapp/ui/shared/consts.dart';

class Category{
  final String title , icon;

  Category({required this.title, required this.icon});
}

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