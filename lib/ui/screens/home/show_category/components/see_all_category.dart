import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_category.dart';
import 'package:storeapp/ui/screens/details/details_screen.dart';
import 'package:storeapp/ui/screens/home/components/product_card.dart';
import 'package:storeapp/ui/shared/consts.dart';

class SeeAllCategory extends StatelessWidget {
  const SeeAllCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String categoryName = ModalRoute.of(context)!.settings.arguments as String;
    return FutureBuilder<List<ProductModel>>(
        future:
            CategoryServices().getCategoryProducts(categoryName: categoryName),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ProductModel> products = snapshot.data!;
            return GridView.builder(
                itemCount: products.length,
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding_16),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                //clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount_1,
                  childAspectRatio: childAspectRatio_1_8,
                  crossAxisSpacing: crossAxisSpacing_10,
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
