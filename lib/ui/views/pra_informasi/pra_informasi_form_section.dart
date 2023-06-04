import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../application/helpers/input_validators.dart';
import '../../shared/custom_textfield.dart';
import 'pra_informasi_viewmodel.dart';

class PraInformasiFormSection
    extends HookViewModelWidget<PraInformasiViewModel> {
  const PraInformasiFormSection({Key? key}) : super(key: key);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    PraInformasiViewModel viewModel,
  ) {
    return Form(
      key: viewModel.formKey,
      autovalidateMode: viewModel.autoValidateMode,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                _buildNomorHandphone(viewModel),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CustomTextField _buildNomorHandphone(PraInformasiViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.noHandphoneController,
      label: 'No. Handphone *',
      hintText: 'Masukkan No. Handphone',
      prefixText: '+62 ',
      keyboardType: TextInputType.phone,
      withMaxLengthAndDigitsOnly: true,
      maxLength: 12,
      onChanged: viewModel.updateNoHandphone,
      onSave: viewModel.updateNoHandphone,
      validator: (value) => InputValidators.validateMobileNumber(
        value,
      ),
    );
  }
}
