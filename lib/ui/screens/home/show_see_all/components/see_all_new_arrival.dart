import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_products.dart';
import 'package:storeapp/ui/screens/details/details_screen.dart';
import 'package:storeapp/ui/screens/home/components/product_card.dart';
import 'package:storeapp/ui/shared/consts.dart';

class SeeAllNewArrival extends StatelessWidget {
  const SeeAllNewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: AllProductsService().getAllProducts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> products = snapshot.data!;
          return GridView.builder(
            itemCount: products.length,
            //clipBehavior: Clip.none,
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding_16),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount_2,
              childAspectRatio: childAspectRatio_0_8,
              crossAxisSpacing: crossAxisSpacing_30,
              mainAxisSpacing: mainAxisSpacing_30,
            ),
            itemBuilder: (context, index) {
              return ProductCard(
                productModel: products[index],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: products[index]),
                    ),
                  );
                },
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: primaryColor,
            ),
          );
        }
      },
    );
  }
}
