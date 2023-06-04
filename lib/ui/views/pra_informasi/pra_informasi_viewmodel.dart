import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/app/constants/shared_preference_keys.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../infrastructure/apis/pipeline_api.dart';
import '../../../infrastructure/database/shared_prefs.dart';

class PraInformasiViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.onUserInteraction;

  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  final _pipelineAPI = locator<PipelineAPI>();
  final _sharedPref = SharedPrefs();

  Future initialize() async {
    setBusy(true);
    setBusy(false);
  }

  final noHandphoneController = TextEditingController();
  void updateNoHandphone(String val) => noHandphoneController.value.copyWith(
      text: val,
      selection:
          TextSelection(baseOffset: val.length, extentOffset: val.length));

  Future _showErrorDialog(String errorMessage) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Gagal',
      description: errorMessage,
      mainButtonTitle: 'COBA LAGI',
    );
  }

  Future navigateBack() async =>
      await _navigationService.navigateTo(Routes.homeView);

  Future<Map<String, dynamic>> _generatePraInfoMap() async {
    return {
      'phoneNum': '+62${noHandphoneController.text.trim()}',
    };
  }

  Future _postData() async {
    final praInfoMap = await _generatePraInfoMap();

    final res = await runBusyFuture(_pipelineAPI.login(praInfoMap));

    res.fold(
      (errorMessage) {
        _showErrorDialog(errorMessage);
      },
      (successMap) async {
        routesWhenIdExist();
      },
    );
  }

  Future _showValidationErrorDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Invalid',
      description:
          'Satu atau beberapa data mandatory ada yang kosong atau tidak sesuai validasi. Silahkan periksa kembali data Anda.',
      mainButtonTitle: 'OK',
    );
  }

  Future validateInputs() async {
    if (formKey.currentState!.validate()) {
      _postData();
    } else {
      autoValidateMode = AutovalidateMode.always;
      _showValidationErrorDialog();
      notifyListeners();
    }
  }

  Future routesWhenIdExist() async {
    final res = await runBusyFuture(_pipelineAPI.getUserPari());

    res.fold(
      (errorMessage) => null,
      (success) {
        _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
        _sharedPref.set(SharedPreferenceKeys.saveDataUsahaToLocalStorage, true);
        _sharedPref.set(
            SharedPreferenceKeys.saveDataLainnyaToLocalStorage, true);

        _sharedPref.set(SharedPreferenceKeys.nomorHandphone, success.phoneNum!);

        _sharedPref.set(
            SharedPreferenceKeys.jenisKomoditas, success.jenisKomoditas!);

        _sharedPref.set(SharedPreferenceKeys.frekuensiTransaksi,
            success.frekuensiTransaksi!);

        if (success.pipelineId != null) {
          getIndividual(success.pipelineId!);
        } else {
          navigateToInformasiDataDiri(null);
        }
      },
    );
  }

  Future getIndividual(String pipelineId) async {
    final res = await runBusyFuture(_pipelineAPI.getIndividual(pipelineId));

    res.fold(
      (errorMessage) {
        _showErrorDialog(errorMessage);
      },
      (success) async {
        _sharedPref.set(SharedPreferenceKeys.methodUpdateDataDiri, true);

        _sharedPref.set(SharedPreferenceKeys.nomorKTP, success.ktpNum!);
        _sharedPref.set(SharedPreferenceKeys.namaLengkap, success.fullName!);
        _sharedPref.set(
            SharedPreferenceKeys.tempatLahir, success.placeOfBirth!);
        _sharedPref.set(
            SharedPreferenceKeys.tanggalLahir, success.dateOfBirth!);
        _sharedPref.set(SharedPreferenceKeys.jenisKelamin, success.gender!);
        _sharedPref.set(
            SharedPreferenceKeys.statusPerkawinan, success.maritalStatus!);
        _sharedPref.set(
            SharedPreferenceKeys.detailAlamatTinggal, success.detail!);
        _sharedPref.set(SharedPreferenceKeys.kodePos, success.postalCode!);
        _sharedPref.set(SharedPreferenceKeys.provinsi, success.province!);
        _sharedPref.set(SharedPreferenceKeys.kota, success.city!);
        _sharedPref.set(SharedPreferenceKeys.kecamatan, success.district!);
        _sharedPref.set(SharedPreferenceKeys.kelurahan, success.village!);
        _sharedPref.set(SharedPreferenceKeys.rt, success.rt!);
        _sharedPref.set(SharedPreferenceKeys.rw, success.rw!);
        if (success.email != null || success.email == '') {
          _sharedPref.set(SharedPreferenceKeys.email, success.email!);
        }
        _sharedPref.set(SharedPreferenceKeys.fotoKtp, success.ktpPath);

        getBusiness(success.id!);
      },
    );
  }

  Future getBusiness(String pipelineId) async {
    final res = await runBusyFuture(_pipelineAPI.getBusiness(pipelineId));

    res.fold(
      (errorMessage) => navigateToInformasiDataDiri(pipelineId),
      (success) async {
        _sharedPref.set(SharedPreferenceKeys.methodUpdateDataUsaha, true);

        _sharedPref.set(SharedPreferenceKeys.namaUsaha, success.businessName!);
        getMoreInfo(success.pipelineId!);
      },
    );
  }

  Future getMoreInfo(String pipelineId) async {
    final res = await runBusyFuture(_pipelineAPI.getMoreInfo(pipelineId));

    res.fold(
      (errorMessage) => navigateToInformasiDataDiri(pipelineId),
      (success) async {
        _sharedPref.set(SharedPreferenceKeys.methodUpdateDataLainnya, true);

        if (success.cbName != null) {
          _sharedPref.set(SharedPreferenceKeys.cbName, success.cbName!);
        }

        if (success.community_branchesId != null) {
          _sharedPref.set(
              SharedPreferenceKeys.cbId, success.community_branchesId!);
        }

        if (success.loanAmount != null) {
          _sharedPref.set(SharedPreferenceKeys.estimasiNominalPinjaman,
              success.loanAmount!);
        }

        if (success.referralAO != null) {
          _sharedPref.set(
              SharedPreferenceKeys.kodeReferalAO, success.referralAO!);
        }

        navigateToInformasiDataDiri(pipelineId);
      },
    );
  }

  Future navigateToInformasiDataDiri(String? pipelineId) async {
    await _navigationService.navigateTo(
      Routes.informasiDataDiriView,
      arguments: InformasiDataDiriViewArguments(
        pipelineId: pipelineId,
      ),
    );
  }
}
