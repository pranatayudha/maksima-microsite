import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/app/constants/custom_color.dart';

class TermsAndConditionsItem extends StatelessWidget {
  final String index;
  final String terms;
  final bool? isLast;
  const TermsAndConditionsItem({
    Key? key,
    required this.index,
    required this.terms,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 6.h, 16.w, 0.h),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundColor: CustomColor.primaryBlue,
                child: Container(
                  decoration: const BoxDecoration(
                    color: CustomColor.primaryBlue,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    index,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  terms,
                  style: const TextStyle(
                    color: CustomColor.primaryBlack,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          if (!isLast!)
            Divider(
              color: const Color(0xffC8C8C8).withOpacity(0.4),
              thickness: 1.h,
            ),
        ],
      ),
    );
  }
}
