import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../shared/custom_textfield.dart';
import 'informasi_usaha_viewmodel.dart';

class InformasiUsahaFormSection
    extends HookViewModelWidget<InformasiUsahaViewModel> {
  const InformasiUsahaFormSection({Key? key}) : super(key: key);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    InformasiUsahaViewModel viewModel,
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
                _buildNamaUsaha(viewModel),
                _buildJenisKomoditas(viewModel),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CustomTextField _buildNamaUsaha(InformasiUsahaViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.namaUsahaController,
      label: 'Nama Usaha',
      hintText: 'Masukan Nama Usaha',
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
      onSave: viewModel.updateNamaUsaha,
      onChanged: viewModel.updateNamaUsaha,
    );
  }

  CustomTextField _buildJenisKomoditas(InformasiUsahaViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.jenisKomoditasController,
      label: 'Jenis Komoditas',
      hintText: 'Masukan Jenis Komoditas',
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
    );
  }
}
