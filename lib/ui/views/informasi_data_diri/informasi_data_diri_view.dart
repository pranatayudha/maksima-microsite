import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/form_layout.dart';
import '../../shared/thick_light_grey_divider.dart';
import 'informasi_data_diri_form_section.dart';
import 'informasi_data_diri_upload_section.dart';
import 'informasi_data_diri_viewmodel.dart';

class InformasiDataDiriView
    extends ViewModelBuilderWidget<InformasiDataDiriViewModel> {
  final String? pipelineId;
  const InformasiDataDiriView({
    Key? key,
    this.pipelineId,
  }) : super(key: key);

  @override
  void onViewModelReady(InformasiDataDiriViewModel viewModel) =>
      viewModel.initialize();

  @override
  InformasiDataDiriViewModel viewModelBuilder(BuildContext context) =>
      InformasiDataDiriViewModel(pipelineId: pipelineId);

  @override
  Widget builder(BuildContext context, InformasiDataDiriViewModel viewModel,
      Widget? child) {
    return FormLayout(
      title: 'Informasi Data Diri',
      actionTitle: '1/3',
      description:
          'Lengkapi semua informasi dibawah dan pastikan seluruh data terisi dengan benar.',
      onBackButtonPressed: viewModel.navigateBack,
      isBusy: false,
      mainButtonTitle: 'Selanjutnya',
      onMainButtonPressed: viewModel.validateInputs,
      child: Column(
        children: const [
          InformasiDataDiriFormSection(),
          ThickLightGreyDivider(),
          InformasiDataDiriUploadSection(),
        ],
      ),
    );
  }
}
