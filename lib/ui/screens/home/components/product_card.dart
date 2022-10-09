import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/ui/shared/consts.dart';

class ProductCard extends StatelessWidget {
  final String? image, title;
  final Color? biColor;
  final int? price;
  final VoidCallback? press;
  final String? description;
  ProductModel productModel;

   ProductCard(
      {super.key,
        required this.productModel,
        @required this.image,
        @required this.title,
        @required this.biColor,
        @required this.description,
        @required this.price,
        @required this.press});
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
                color:  biColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultBorderRadius),
                ),
              ),
              child: Image.network(
                productModel.image,
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
                    productModel.title,
                    style: const TextStyle(color: blackColor),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(
                  width: defaultPadding_16 / 4,
                ),
                Text(
                  '\$${productModel.price}',
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
