import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

import '../../../../../../application/app/constants/common.dart';
import '../../../../../../application/app/constants/icon_constants.dart';
import '../../../../../../application/helpers/input_validators.dart';
import '../../shared/custom_textfield.dart';
import '../../shared/custom_type_ahead_form_field.dart';
import 'informasi_data_diri_viewmodel.dart';

class InformasiDataDiriFormSection
    extends HookViewModelWidget<InformasiDataDiriViewModel> {
  const InformasiDataDiriFormSection({Key? key}) : super(key: key);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    InformasiDataDiriViewModel viewModel,
  ) {
    viewModel.jenisController.text = 'Perorangan';

    return Form(
      key: viewModel.formKey,
      autovalidateMode: viewModel.autoValidateMode,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                _buildJenis(viewModel),
                _buildNamaLengkap(viewModel),
                _buildNomorKTP(viewModel),
                _buildTempatLahir(viewModel),
                _buildTanggalLahir(viewModel, context),
                _buildJenisKelamin(viewModel),
                _buildStatusPerkawinan(viewModel),
                _buildDetailAlamatTinggal(viewModel),
                _buildKodePos(viewModel),
                _buildProvinsi(viewModel),
                _buildKota(viewModel),
                Row(
                  children: [
                    Expanded(
                      child: _buildKecamatan(viewModel),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: _buildKelurahan(viewModel),
                    )
                  ],
                ),
                Row(
                  children: [
                    _buildRT(viewModel),
                    SizedBox(width: 15.w),
                    _buildRW(viewModel),
                  ],
                ),
                _buildNomorHandphone(viewModel),
                _buildEmail(viewModel),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CustomTextField _buildDetailAlamatTinggal(
      InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.detailAlamatTinggalController,
      label: 'Detail Alamat Tempat Tinggal *',
      hintText: 'Masukkan Alamat Lengkap',
      textCapitalization: TextCapitalization.words,
      onSave: viewModel.updateDetailAlamatTinggal,
      onChanged: viewModel.updateDetailAlamatTinggal,
      validator: (value) => InputValidators.validateRequiredField(value,
          fieldType: 'Detail Alamat Tempat Tinggal'),
    );
  }

  CustomTextField _buildEmail(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.emailController,
      label: 'Email',
      hintText: 'Masukkan Email',
      keyboardType: TextInputType.emailAddress,
      onSave: viewModel.updateEmail,
      onChanged: viewModel.updateEmail,
      // validator: (value) => InputValidators.validateEmail(value),
    );
  }

  CustomTextField _buildJenis(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.jenisController,
      label: 'Jenis Debitur *',
      hintText: 'Masukkan Jenis Debitur',
      textCapitalization: TextCapitalization.words,
      enabled: false,
      fillColor: Colors.transparent,
    );
  }

  PopupMenuButton<String> _buildJenisKelamin(
      InformasiDataDiriViewModel viewModel) {
    return PopupMenuButton(
      offset: Offset(0, 65.h),
      itemBuilder: (BuildContext context) {
        return [
          'Laki-laki',
          'Perempuan',
        ].map<PopupMenuItem<String>>((value) {
          return PopupMenuItem(value: value, child: Text(value));
        }).toList();
      },
      onSelected: (String val) => viewModel.updateJenisKelamin(val),
      child: CustomTextField(
        textEditingController: viewModel.jenisKelaminController,
        label: 'Jenis Kelamin *',
        hintText: 'Pilih Jenis Kelamin',
        withSuffixIcon: true,
        suffixIconImagePath: IconConstants.chevronDown,
        enabled: false,
        validator: (value) => InputValidators.validateRequiredField(value,
            fieldType: 'Jenis Kelamin'),
      ),
    );
  }

  CustomTypeAheadFormField _buildKecamatan(
    InformasiDataDiriViewModel viewModel,
  ) {
    return CustomTypeAheadFormField(
      label: 'Kecamatan *',
      controller: viewModel.districtAlamatTinggalController,
      onClear: viewModel.clearDistrict,
      onFilter: viewModel.filterDistrict,
      onSuggestionSelected: viewModel.updateDistrict,
      itemBuilder: (context, suggestion) {
        return ListTile(title: Text(suggestion.district));
      },
      validator: (value) =>
          InputValidators.validateRequiredField(value, fieldType: 'Kecamatan'),
    );
  }

  CustomTypeAheadFormField _buildKelurahan(
      InformasiDataDiriViewModel viewModel) {
    return CustomTypeAheadFormField(
      label: 'Kelurahan *',
      controller: viewModel.villageAlamatTinggalController,
      onClear: viewModel.clearVillage,
      onFilter: viewModel.filterVillage,
      onSuggestionSelected: viewModel.updateVillageAlamatTinggal,
      itemBuilder: (context, suggestion) {
        return ListTile(title: Text(suggestion.village));
      },
      validator: (value) =>
          InputValidators.validateRequiredField(value, fieldType: 'Kelurahan'),
    );
  }

  CustomTextField _buildKodePos(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      label: 'Kode Pos *',
      textEditingController: viewModel.postalCodeAlamatTinggalController,
      hintText: 'Masukkan Kode Pos',
      onSave: viewModel.updatePostalCodeAlamatTinggal,
      onChanged: viewModel.updatePostalCodeAlamatTinggal,
      keyboardType: TextInputType.number,
      withMaxLengthAndDigitsOnly: true,
      maxLength: 5,
      validator: (value) => InputValidators.validateRequiredField(value,
          fieldType: 'Postal Code'),
    );
  }

  CustomTextField _buildKota(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      label: 'Kota *',
      textEditingController: viewModel.cityAlamatTinggalController,
      hintText: 'Masukkan Nama Kota',
      enabled: false,
      fillColor: Colors.transparent,
    );
  }

  CustomTextField _buildNamaLengkap(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.namaLengkapController,
      label: 'Nama Lengkap Sesuai KTP *',
      hintText: 'Masukkan Nama Lengkap',
      textCapitalization: TextCapitalization.words,
      onSave: viewModel.updateNamaLengkap,
      onChanged: viewModel.updateNamaLengkap,
      validator: (value) =>
          InputValidators.validateName(value, fieldType: 'Nama Lengkap'),
    );
  }

  CustomTextField _buildNomorHandphone(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.noHpController,
      label: 'No. Handphone *',
      hintText: 'Masukkan No. Handphone',
      prefixText: '+62 ',
      keyboardType: TextInputType.number,
      withMaxLengthAndDigitsOnly: true,
      maxLength: 12,
      enabled: false,
    );
  }

  CustomTextField _buildNomorKTP(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.nomorKtpController,
      label: 'Nomor KTP *',
      hintText: 'Masukkan Nomor KTP',
      onSave: viewModel.updateNomorKTP,
      onChanged: viewModel.updateNomorKTP,
      keyboardType: TextInputType.number,
      validator: (value) =>
          InputValidators.validateKTPNumber(value, fieldType: 'Nomor KTP '),
      withMaxLengthAndDigitsOnly: true,
      maxLength: 16,
    );
  }

  CustomTextField _buildProvinsi(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      label: 'Provinsi *',
      textEditingController: viewModel.provinceAlamatTinggalController,
      hintText: 'Masukkan Nama Provinsi',
      enabled: false,
      fillColor: Colors.transparent,
    );
  }

  Expanded _buildRT(InformasiDataDiriViewModel viewModel) {
    return Expanded(
      child: CustomTextField(
        textEditingController: viewModel.rtAlamatTinggalController,
        label: 'RT *',
        hintText: 'cth. 005',
        onSave: viewModel.updateRtAlamatTinggal,
        onChanged: viewModel.updateRtAlamatTinggal,
        keyboardType: TextInputType.number,
        withMaxLengthAndDigitsOnly: true,
        maxLength: 3,
        validator: (value) =>
            InputValidators.validateRequiredField(value, fieldType: 'RT'),
      ),
    );
  }

  Expanded _buildRW(InformasiDataDiriViewModel viewModel) {
    return Expanded(
      child: CustomTextField(
        textEditingController: viewModel.rwAlamatTinggalController,
        label: 'RW *',
        hintText: 'cth. 006',
        onSave: viewModel.updateRwAlamatTinggal,
        onChanged: viewModel.updateRwAlamatTinggal,
        keyboardType: TextInputType.number,
        withMaxLengthAndDigitsOnly: true,
        maxLength: 3,
        validator: (value) =>
            InputValidators.validateRequiredField(value, fieldType: 'RW'),
      ),
    );
  }

  PopupMenuButton<String> _buildStatusPerkawinan(
      InformasiDataDiriViewModel viewModel) {
    return PopupMenuButton(
      offset: Offset(0, 65.h),
      itemBuilder: (BuildContext context) {
        return [
          Common.kawin,
          Common.belumKawin,
          Common.ceraiHidup,
          Common.ceraiMati,
        ].map<PopupMenuItem<String>>((value) {
          return PopupMenuItem(value: value, child: Text(value));
        }).toList();
      },
      onSelected: (String val) => viewModel.updateMaritalStatus(val),
      child: CustomTextField(
        textEditingController: viewModel.statusPerkawinanController,
        label: 'Status Perkawinan *',
        hintText: 'Pilih Status Perkawinan',
        withSuffixIcon: true,
        suffixIconImagePath: IconConstants.chevronDown,
        enabled: false,
        validator: (value) => InputValidators.validateRequiredField(value,
            fieldType: 'Status Perkawinan'),
      ),
    );
  }

  CustomTextField _buildTanggalLahir(
      InformasiDataDiriViewModel viewModel, BuildContext context) {
    return CustomTextField(
      textEditingController: viewModel.tglLahirController,
      label: 'Tanggal Lahir *',
      hintText: 'Masukkan Tanggal Lahir',
      withSuffixIcon: true,
      suffixIconImagePath: IconConstants.calendar,
      onTap: () => viewModel.selectTglLahir(context),
      enabled: false,
      fillColor: Colors.white,
      onSave: viewModel.updateTglLahir,
      validator: (value) => InputValidators.ritelValidateBirthDate(value,
          fieldType: 'Tanggal Lahir'),
    );
  }

  CustomTextField _buildTempatLahir(InformasiDataDiriViewModel viewModel) {
    return CustomTextField(
      textEditingController: viewModel.tempatLahirController,
      label: 'Tempat Lahir *',
      hintText: 'Masukkan Tempat Lahir',
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      onSave: viewModel.updateTempatLahir,
      onChanged: viewModel.updateTempatLahir,
      validator: (value) => InputValidators.validateRequiredField(value,
          fieldType: 'Tempat Lahir'),
    );
  }
}
