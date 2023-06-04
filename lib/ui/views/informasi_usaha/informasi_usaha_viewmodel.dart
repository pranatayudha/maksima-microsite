import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/app/constants/shared_preference_keys.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../application/enums/pipeline_api_method.dart';
import '../../../infrastructure/apis/pipeline_api.dart';
import '../../../infrastructure/database/shared_prefs.dart';

class InformasiUsahaViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.onUserInteraction;

  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  final _pipelineAPI = locator<PipelineAPI>();
  final _sharedPref = SharedPrefs();

  String? pipelineId;
  InformasiUsahaViewModel({
    this.pipelineId,
  });

  Future initialize() async {
    setBusy(true);

    if (_sharedPref.get(SharedPreferenceKeys.saveDataUsahaToLocalStorage) !=
        null) {
      await _prepopulateTextFieldsFromLocalStorage();
    }
    setBusy(false);
  }

  Future _prepopulateTextFieldsFromLocalStorage() async {
    if (_sharedPref.get(SharedPreferenceKeys.namaUsaha) != null) {
      namaUsahaController.text =
          _sharedPref.get(SharedPreferenceKeys.namaUsaha);
    }
  }

  final namaUsahaController = TextEditingController();
  void updateNamaUsaha(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataUsahaToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.namaUsaha, val);

    namaUsahaController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
  }

  final jenisKomoditasController = TextEditingController();

  Future _showErrorDialog(String errorMessage) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Gagal',
      description: errorMessage,
      mainButtonTitle: 'COBA LAGI',
    );
  }

  Future navigateBack() async =>
      await _navigationService.navigateTo(Routes.informasiDataDiriView,
          arguments: InformasiDataDiriViewArguments(pipelineId: pipelineId!));

  Future<Map<String, dynamic>> _generateInfoUsahaMap() async {
    return {
      'pipelineId': int.parse(pipelineId!),
      'businessName': namaUsahaController.text.isNotEmpty
          ? namaUsahaController.text.trim()
          : '',
    };
  }

  Future _postData(PipelineAPIMethod pipelineAPIMethod) async {
    switch (pipelineAPIMethod) {
      case PipelineAPIMethod.addDataDiri:
        break;
      case PipelineAPIMethod.updateDataDiri:
        break;
      case PipelineAPIMethod.addDataUsaha:
        final infoUsahaMap = await _generateInfoUsahaMap();

        final res =
            await runBusyFuture(_pipelineAPI.addInformasiUsaha(infoUsahaMap));

        res.fold(
          (errorMessage) {
            _showErrorDialog(errorMessage);
            notifyListeners();
          },
          (success) async => await navigateToInformasiLainnya(),
        );
        break;
      case PipelineAPIMethod.updateDataUsaha:
        final infoUsahaMap = await _generateInfoUsahaMap();

        final res = await runBusyFuture(
            _pipelineAPI.updateInformasiUsaha(infoUsahaMap));

        res.fold(
          (errorMessage) {
            _showErrorDialog(errorMessage);
            notifyListeners();
          },
          (success) async => await navigateToInformasiLainnya(),
        );
        break;
      case PipelineAPIMethod.addDataLainnya:
        break;
      case PipelineAPIMethod.updateDataLainnya:
        break;
    }
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
      if (_sharedPref.get(SharedPreferenceKeys.methodUpdateDataUsaha) != null) {
        _postData(PipelineAPIMethod.updateDataUsaha);
      } else {
        _postData(PipelineAPIMethod.addDataUsaha);
      }
    } else {
      autoValidateMode = AutovalidateMode.always;
      _showValidationErrorDialog();
      notifyListeners();
    }
  }

  Future navigateToInformasiLainnya() async {
    _sharedPref.set(SharedPreferenceKeys.methodUpdateDataUsaha, true);
    await _navigationService.navigateTo(Routes.informasiLainnyaView,
        arguments: InformasiLainnyaViewArguments(pipelineId: pipelineId!));
  }
}
