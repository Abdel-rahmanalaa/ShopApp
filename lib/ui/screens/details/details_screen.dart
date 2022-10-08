import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/models/product.dart';
import 'package:storeapp/ui/screens/details/components/color_dot.dart';
import 'package:storeapp/ui/shared/consts.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key, required this.product}): super(key: key);

  final ProductModel product;

  static String id = 'DetailsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.biColor,
      appBar: AppBar(
        backgroundColor: transparentColor,
        elevation: zero,
        leading: const BackButton(
          color: blackColor,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                backgroundColor: whiteColor,
                child: SvgPicture.asset(
                  heartIcon,
                  height: fontSize_20,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Image.network(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: defaultPadding_16,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding_16,
                  defaultPadding_16 * 2, defaultPadding_16, defaultPadding_16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        const SizedBox(
                          width: defaultPadding_16,
                        ),
                        Text(
                          '\$${product.price}',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding_16),
                      child: Text(
                        detailProduct_0Text,
                      ),
                    ),
                    const Text(
                      colorsText,
                      style: TextStyle(
                        color: blackColor,
                        fontWeight: fontWeight_500,
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding_16 / 2,
                    ),
                    Row(
                      children: [
                        ColorDot(
                          color: dotColor_0,
                          press: () {},
                          isActive: false,
                        ),
                        ColorDot(
                          color: dotColor_1,
                          press: () {},
                          isActive: true,
                        ),
                        ColorDot(
                          color: dotColor_2,
                          press: () {},
                          isActive: false,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: defaultPadding_16 * 1.5,
                    ),
                    Center(
                      child: SizedBox(
                        width: size_200,
                        height: size_48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: primaryColor,
                          shape: const StadiumBorder(),),
                          child: const Text(addToCartText),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
