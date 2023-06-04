import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/form_layout.dart';
import 'informasi_lainnya_form_section.dart';
import 'informasi_lainnya_viewmodel.dart';

class InformasiLainnyaView
    extends ViewModelBuilderWidget<InformasiLainnyaViewModel> {
  final String? pipelineId;
  const InformasiLainnyaView({
    Key? key,
    this.pipelineId,
  }) : super(key: key);

  @override
  void onViewModelReady(InformasiLainnyaViewModel viewModel) =>
      viewModel.initialize();

  @override
  InformasiLainnyaViewModel viewModelBuilder(BuildContext context) =>
      InformasiLainnyaViewModel(pipelineId: pipelineId);

  @override
  Widget builder(BuildContext context, InformasiLainnyaViewModel viewModel,
      Widget? child) {
    return FormLayout(
      title: 'Informasi Lainnya',
      actionTitle: '3/3',
      description:
          'Lengkapi semua informasi dibawah dan pastikan seluruh data terisi dengan benar.',
      onBackButtonPressed: viewModel.navigateBack,
      isBusy: false,
      mainButtonTitle: 'Kirim Pengajuan',
      onMainButtonPressed: viewModel.validateInputs,
      child: Column(
        children: const [
          InformasiLainnyaFormSection(),
        ],
      ),
    );
  }
}
