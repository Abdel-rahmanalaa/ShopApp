
import 'package:flutter/material.dart';
import 'package:storeapp/models/product.dart';
import 'package:storeapp/screens/home/components/product_card.dart';
import 'package:storeapp/screens/home/components/section_title.dart';
import 'package:storeapp/shared/consts.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: popularText,
          pressSeeALl: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_Product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding_16),
                child: ProductCard(
                  image: demo_Product[index].image,
                  title: demo_Product[index].title,
                  biColor: demo_Product[index].biColor,
                  price: demo_Product[index].price,
                  press: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}