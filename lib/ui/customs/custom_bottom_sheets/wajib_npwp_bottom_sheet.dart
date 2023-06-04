import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../shared/custom_outlined_button.dart';
import '../../shared/styles.dart';

class WajibNPWPBottomSheet extends StatelessWidget {
  final SheetRequest? request;
  final Function(SheetResponse)? completer;

  const WajibNPWPBottomSheet({
    Key? key,
    this.request,
    this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          )),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 43, 20.w, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.warning_amber_sharp,
                        color: Color(0xffF37123)),
                    SizedBox(width: 14.w),
                    Text(
                      'Wajib NPWP',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.32.w,
                        color: const Color(0xff1A1A1A),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 46.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nasabah dengan pinjaman \nminimal Rp. 50 Juta wajib memiliki NPWP',
                        style: tsDescription,
                      ),
                      SizedBox(height: 31.h),
                      Text(
                        'Nominal pinjaman nasabah mewajibkan untuk menyertakan nomor NPWP, isi dahulu nomor NPWP untuk dapat menyelesaikan analisa pinjaman',
                        style: tsDescription,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 55.h),
                CustomOutlinedButton(
                  label: 'Koreksi',
                  height: 40.h,
                  blackWeightLabel: true,
                  onPressed: () => completer!(SheetResponse(confirmed: true)),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
