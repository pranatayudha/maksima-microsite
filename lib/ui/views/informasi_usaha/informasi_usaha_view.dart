import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/form_layout.dart';
import 'informasi_usaha_form_section.dart';
import 'informasi_usaha_viewmodel.dart';

class InformasiUsahaView
    extends ViewModelBuilderWidget<InformasiUsahaViewModel> {
  final String? pipelineId;
  const InformasiUsahaView({
    Key? key,
    this.pipelineId,
  }) : super(key: key);

  @override
  void onViewModelReady(InformasiUsahaViewModel viewModel) =>
      viewModel.initialize();

  @override
  InformasiUsahaViewModel viewModelBuilder(BuildContext context) =>
      InformasiUsahaViewModel(pipelineId: pipelineId);

  @override
  Widget builder(
      BuildContext context, InformasiUsahaViewModel viewModel, Widget? child) {
    return FormLayout(
      title: 'Informasi Usaha',
      actionTitle: '2/3',
      description:
          'Lengkapi semua informasi dibawah dan pastikan seluruh data terisi dengan benar.',
      onBackButtonPressed: viewModel.navigateBack,
      isBusy: false,
      mainButtonTitle: 'Selanjutnya',
      onMainButtonPressed: viewModel.validateInputs,
      child: Column(
        children: const [
          InformasiUsahaFormSection(),
        ],
      ),
    );
  }
}
