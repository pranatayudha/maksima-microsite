import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../application/app/constants/custom_color.dart';
import '../../../../../../../application/app/constants/image_constants.dart';
import 'custom_button.dart';
import 'styles.dart';

class SuccessView extends StatelessWidget {
  final String? pipelineId;
  final String? debiturName;

  const SuccessView({
    Key? key,
    this.pipelineId,
    this.debiturName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstants.successBg),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(ImageConstants.success, scale: 3),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          'Pengajuan Pinjaman Berhasil',
                          style: tsHeading4,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                        SizedBox(height: 8.h),
                        AutoSizeText(
                          'Pengajuan pinjaman Anda berhasil diteruskan dan sedang diproses oleh tim kami. Silahkan tunggu proses dalam waktu 1x 24 jam.',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: CustomColor.primaryBlack,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ),
                _buildButtonOk(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonOk() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.h, 16.w, 16.h, 16.w),
        child: CustomButton(
          label: 'Kembali ke Aplikasi PARI',
          isBusy: false,
          onPressed: () {
            if (Platform.isIOS) {
              exit(0);
            } else if (Platform.isAndroid) {
              SystemNavigator.pop();
            }
          },
        ),
      ),
    );
  }
}
