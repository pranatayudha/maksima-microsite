import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../application/app/constants/custom_color.dart';

class TitleSubtitleWithIcon extends StatelessWidget {
  final String image;
  final String title;
  final String? title2;
  final String subtitle;
  final bool? isLast;
  const TitleSubtitleWithIcon({
    Key? key,
    required this.image,
    required this.title,
    this.title2 = '',
    required this.subtitle,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0.w, 8.h, 0.w, 8.h),
          child: Row(
            children: [
              Image.asset(image, scale: 2.5),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title2 != ''
                        ? AutoSizeText.rich(
                            TextSpan(
                              text: title,
                              style: const TextStyle(
                                color: CustomColor.primaryBlack,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Nunito',
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' ${title2!}',
                                  style: const TextStyle(
                                    color: CustomColor.primaryBlue,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                              ],
                            ),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            minFontSize: 10,
                          )
                        : AutoSizeText(
                            title,
                            style: const TextStyle(
                              color: CustomColor.primaryBlack,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Nunito',
                              fontSize: 16,
                            ),
                            minFontSize: 10,
                          ),
                    AutoSizeText(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      minFontSize: 8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (!isLast!)
          Divider(
            color: const Color(0xffC8C8C8).withOpacity(0.4),
            thickness: 1.h,
          ),
      ],
    );
  }
}
