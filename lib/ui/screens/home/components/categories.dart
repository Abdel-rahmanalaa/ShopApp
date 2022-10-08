import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/models/category.dart';
import 'package:storeapp/ui/shared/consts.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
              (index) =>Padding(
            padding: const EdgeInsets.only(right: defaultPadding_16),
            child: CategoryCard(
                title: demo_categories[index].title,
                icon: demo_categories[index].icon,
                press: (){}
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {Key? key, required this.title, required this.icon, required this.press});

  final String title, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding_16 / 4,
          vertical: defaultPadding_16 / 2,
        ),
        child: Column(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(
              height: defaultPadding_16 / 2,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}