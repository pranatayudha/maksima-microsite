import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/app/constants/custom_color.dart';
import '../../application/app/constants/icon_constants.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final Function onSubmitted;

  const CustomSearchBar({
    required this.hintText,
    required this.onSubmitted,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.r),
            borderSide: const BorderSide(color: Color(0xff99A0AF))),
        prefixIcon: Image.asset(
          IconConstants.searchBlack,
          scale: 3,
        ),
        hintStyle: const TextStyle(color: CustomColor.darkGrey),
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 12.h,
        ),
      ),
      onSubmitted: (val) => onSubmitted(val),
    );
  }
}
