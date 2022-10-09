import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/ui/screens/home/show_see_all/components/see_all_product.dart';
import 'package:storeapp/ui/shared/consts.dart';

class ShowProductScreen extends StatelessWidget {
  const ShowProductScreen({Key? key}) : super(key: key);

  static String id = 'ShowProductScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  height: size_20,
                )),
          )
        ],
      ),
      body: const SeeAllProduct(),
    );
  }
}
