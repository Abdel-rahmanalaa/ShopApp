import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_products.dart';
import 'package:storeapp/ui/screens/details/details_screen.dart';
import 'package:storeapp/ui/screens/home/components/product_card.dart';
import 'package:storeapp/ui/screens/home/components/section_title.dart';
import 'package:storeapp/ui/screens/home/show_see_all/show_new_arrival_screen.dart';
import 'package:storeapp/ui/shared/consts.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
        future: AllProductsService().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {

            List<ProductModel> products = snapshot.data!;
            return Column(
              children: [
                SectionTitle(
                  title: newArrivalText,
                  pressSeeALl: () {
                    Navigator.pushNamed(context, ShowNewArrivalScreen.id);
                  },
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      products.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(left: defaultPadding_16),
                        child: ProductCard(
                          productModel: products[index],
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsScreen(product: products[index])));
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: LinearProgressIndicator(
                color: primaryColor,
              ),
            );
          }
        });
  }
}
