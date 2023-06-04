import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../application/app/constants/icon_constants.dart';
import '../../../application/helpers/input_validators.dart';
import '../../../application/models/community_branch.dart';
import '../../../application/models/referral_ao.dart';
import '../../shared/custom_textfield.dart';
import '../../shared/custom_type_ahead_form_field.dart';
import 'informasi_lainnya_viewmodel.dart';

class InformasiLainnyaFormSection
    extends HookViewModelWidget<InformasiLainnyaViewModel> {
  const InformasiLainnyaFormSection({Key? key}) : super(key: key);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    InformasiLainnyaViewModel viewModel,
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
                _buildCbTerdekat(viewModel),
                // _buildFrekuensiTransaksi(viewModel),
                _buildEstimasiNominalPinjaman(viewModel),
                _buildReferalAO(viewModel),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCbTerdekat(InformasiLainnyaViewModel viewModel) {
    return CustomTypeAheadFormField<CommunityBranch>(
      label: 'Kantor Cabang Terdekat dari Lokasi Anda *',
      controller: viewModel.cbTerdekatController,
      onClear: viewModel.clearCommunityBranch,
      onFilter: viewModel.filterCommunityBranch,
      onSuggestionSelected: viewModel.updateCommunityBranch,
      itemBuilder: (context, suggestion) {
        return ListTile(title: Text(suggestion.name!));
      },
      validator: (value) => InputValidators.validateRequiredField(value,
          fieldType: 'Kantor Cabang'),
      description:
          'Account Officer (AO) dari Bank Raya akan datang ke lokasi Anda untuk proses selanjutnya',
    );
  }

  CustomTextField _buildEstimasiNominalPinjaman(
      InformasiLainnyaViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.estimasiNominalPinjamanController,
      label: 'Estimasi Nominal Plafond Pinjaman *',
      hintText: 'Masukkan Nominal Pinjaman',
      withPrefixIcon: true,
      prefixIconImagePath: IconConstants.rupiah,
      keyboardType: TextInputType.number,
      onSave: viewModel.updateEstimasiNominalPinjaman,
      onChanged: viewModel.updateEstimasiNominalPinjaman,
      withThousandsSeparator: true,
      withMaxLength: true,
      maxLength: 9,
      validator: (value) =>
          InputValidators.ritelValidateNominalPinjaman(value, 1000000000),
    );
  }

  CustomTextField _buildFrekuensiTransaksi(
      InformasiLainnyaViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.frekuensiTransaksiController,
      label: 'Frekuensi Transaksi di PARI *',
      hintText: 'Masukkan Frekuensi Transaksi',
      keyboardType: TextInputType.number,
      suffixText: 'Transaksi',
    );
  }

  // CustomTextField _buildReferalAO(InformasiLainnyaViewModel viewModel) {
  //   return CustomTextField(
  //     textEditingController: viewModel.kodeReferalAOController,
  //     label: 'Referal AO',
  //     keyboardType: TextInputType.number,
  //     onSave: viewModel.updateKodeReferalAO,
  //     onChanged: viewModel.updateKodeReferalAO,
  //     description: 'Kosongkan bila pengajuan bukan melalui AO Bank Raya',
  //   );
  // }

  Widget _buildReferalAO(InformasiLainnyaViewModel viewModel) {
    return CustomTypeAheadFormField<ReferralAO>(
      label: 'Referal AO *',
      controller: viewModel.kodeReferalAOController,
      onClear: viewModel.clearReferralAO,
      onFilter: viewModel.filterReferralAO,
      onSuggestionSelected: viewModel.updateReferralAO,
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(
            suggestion.pnName!,
          ),
        );
      },
      validator: (value) => InputValidators.validateRequiredField(value,
          fieldType: 'Referral AO'),
    );
  }
}
