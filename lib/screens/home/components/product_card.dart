import 'package:flutter/material.dart';
import 'package:storeapp/shared/consts.dart';

class ProductCard extends StatelessWidget {
  final String image, title;
  final Color biColor;
  final int price;
  final VoidCallback press;

  const ProductCard(
      {super.key,
        required this.image,
        required this.title,
        required this.biColor,
        required this.price,
        required this.press});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding_16 / 2),
        decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius:
            BorderRadius.all(Radius.circular(defaultBorderRadius))),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: biColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultBorderRadius),
                ),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(
              height: defaultPadding_16 / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: blackColor),
                  ),
                ),
                const SizedBox(
                  width: defaultPadding_16 / 4,
                ),
                Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
