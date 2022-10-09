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
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .96,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 30,
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
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: primaryColor,
              ),
            );
          }
        });
  }
}
