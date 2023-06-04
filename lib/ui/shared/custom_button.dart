// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/app/constants/custom_color.dart';
import 'custom_circular_progress_indicator.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final Function? onPressed;
  final bool isBusy;
  final Color? color;
  final double? radius;
  final double? height;
  final double? labelSize;
  final bool isOutlineButton;

  const CustomButton({
    Key? key,
    required this.label,
    this.labelColor,
    required this.onPressed,
    required this.isBusy,
    this.color,
    this.radius,
    this.height,
    this.labelSize,
    this.isOutlineButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 4.r),
      child: SizedBox(
        height: height ?? 40.h,
        width: double.infinity,
        child: isOutlineButton ? _outlineButton() : _elvetedButton(),
      ),
    );
  }

  OutlineButton _outlineButton() {
    return OutlineButton(
      onPressed: onPressed != null ? () => onPressed!() : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 8),
      ),
      borderSide:
          BorderSide(width: 2.0, color: color ?? const Color(0xff027DEF)),
      child: isBusy
          ? const CustomCircularProgressIndicator()
          : Text(
              label,
              style: TextStyle(
                fontSize: labelSize ?? 14.sp,
                fontWeight: FontWeight.bold,
                color: labelColor ?? Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
            ),
    );
  }

  ElevatedButton _elvetedButton() {
    return ElevatedButton(
      onPressed: onPressed != null ? () => onPressed!() : null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return CustomColor.darkGrey;
          }
          return color ?? CustomColor.secondaryBlue;
        }),
      ),
      child: isBusy
          ? const CustomCircularProgressIndicator()
          : Text(
              label,
              style: TextStyle(
                fontSize: labelSize ?? 16.sp,
                fontWeight: FontWeight.bold,
                color: labelColor ?? Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
            ),
    );
  }
}
