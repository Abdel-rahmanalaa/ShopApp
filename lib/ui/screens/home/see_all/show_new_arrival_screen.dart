import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/ui/screens/home/see_all/components/see_all_new_arrival.dart';
import 'package:storeapp/ui/shared/consts.dart';

class ShowNewArrivalScreen extends StatelessWidget {
  const ShowNewArrivalScreen({Key? key}) : super(key: key);

  static String id = 'ShowNewArrivalScreen';
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
      body: const SeeAllNewArrival(),
    );
  }
}
