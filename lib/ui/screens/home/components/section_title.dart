import 'package:flutter/material.dart';
import 'package:storeapp/ui/shared/consts.dart';

class SectionTitle extends StatelessWidget {
  SectionTitle({required this.title, required this.pressSeeALl});

  final String title;
  final VoidCallback pressSeeALl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: blackColor,
                fontWeight: fontWeight_500,
              ),
        ),
        TextButton(
            onPressed: pressSeeALl,
            child: const Text(
              seeAllText,
              style: TextStyle(color: blackColor54),
            )),
      ],
    );
  }
}
