import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/ui/screens/home/show_category/components/see_all_category.dart';
import 'package:storeapp/ui/shared/consts.dart';

class ShowCategoryScreen extends StatelessWidget {
  const ShowCategoryScreen({Key? key}) : super(key: key);

  static String id = 'ShowCategoryScreen';

  @override
  Widget build(BuildContext context) {
    String categoryName = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
          style: const TextStyle(color: blackColor),
        ),
        backgroundColor: transparentColor,
        elevation: 1,
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
      body: const SeeAllCategory(),
    );
  }
}
