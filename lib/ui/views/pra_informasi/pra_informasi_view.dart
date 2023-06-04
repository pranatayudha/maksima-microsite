import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../shared/form_layout.dart';
import 'pra_informasi_form_section.dart';
import 'pra_informasi_viewmodel.dart';

class PraInformasiView extends ViewModelBuilderWidget<PraInformasiViewModel> {
  const PraInformasiView({
    Key? key,
  }) : super(key: key);

  @override
  void onViewModelReady(PraInformasiViewModel viewModel) =>
      viewModel.initialize();

  @override
  PraInformasiViewModel viewModelBuilder(BuildContext context) =>
      PraInformasiViewModel();

  @override
  Widget builder(
      BuildContext context, PraInformasiViewModel viewModel, Widget? child) {
    return FormLayout(
      title: 'Pra Informasi',
      actionTitle: '',
      description:
          'Masukkan No. Handphone yang terdaftar pada aplikasi PARI Anda',
      onBackButtonPressed: viewModel.navigateBack,
      isBusy: viewModel.isBusy,
      mainButtonTitle: 'Selanjutnya',
      onMainButtonPressed: viewModel.validateInputs,
      buttonBusy: false,
      child: Column(
        children: const [
          PraInformasiFormSection(),
        ],
      ),
    );
  }
}
