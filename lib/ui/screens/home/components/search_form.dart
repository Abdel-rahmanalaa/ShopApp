import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storeapp/ui/shared/consts.dart';

Form SearchForm() {
  return Form(
    child: TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: whiteColor,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(defaultPadding_14),
          child: SvgPicture.asset(searchIcon),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding_16,
          ),
          child: SizedBox(
            height: size_48,
            width: size_48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: primaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(defaultBorderRadius),
                  ),
                ),
              ),
              child: SvgPicture.asset(filterIcon),
            ),
          ),
        ),
      ),
    ),
  );
}

OutlineInputBorder buildOutlineInputBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
    borderSide: BorderSide.none,
  );
}
