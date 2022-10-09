import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/ui/screens/home/show_category/components/see_all_category.dart';
import 'package:storeapp/ui/shared/consts.dart';

class ShowCategoryScreen extends StatelessWidget {
  const ShowCategoryScreen({Key? key}) : super(key: key);

  static String id = 'ShowCategoryScreen';
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
                  height: fontSize_20,
                )),
          )
        ],
      ),
      body: SeeAllCategory(),
    );
  }
}
