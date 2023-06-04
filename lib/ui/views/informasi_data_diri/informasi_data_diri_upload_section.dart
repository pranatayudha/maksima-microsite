import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../shared/upload_item_button_ritel.dart';
import 'informasi_data_diri_viewmodel.dart';

class InformasiDataDiriUploadSection
    extends HookViewModelWidget<InformasiDataDiriViewModel> {
  const InformasiDataDiriUploadSection({Key? key}) : super(key: key);

  @override
  Widget buildViewModelWidget(
      BuildContext context, InformasiDataDiriViewModel viewModel) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 24.h, top: 25.h),
            child: Text(
              'UPLOAD FILE',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5.w,
              ),
            ),
          ),
          UploadItemButtonRitel(
            imageUrl: viewModel.fotoKtpPublicUrl,
            label: 'Foto E-KTP  *',
            onPressed: viewModel.fotoKtpPublicUrl == null
                ? viewModel.captureKtp
                : viewModel.clearKtp,
            errorText: viewModel.fotoKtpErrorText,
          ),
        ],
      ),
    );
  }
}
