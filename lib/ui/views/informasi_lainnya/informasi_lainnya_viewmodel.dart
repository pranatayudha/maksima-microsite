// ignore_for_file: unnecessary_null_comparison

import 'package:bridgtl_pinang_maksima_microsite/application/helpers/rating_pari_formatter.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/app/constants/shared_preference_keys.dart';
import '../../../application/enums/bottom_sheet_type.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../application/models/community_branch.dart';
import '../../../application/models/referral_ao.dart';
import '../../../infrastructure/apis/master_api.dart';
import '../../../infrastructure/apis/pipeline_api.dart';
import '../../../infrastructure/database/shared_prefs.dart';

class InformasiLainnyaViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.onUserInteraction;

  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _sharedPref = SharedPrefs();

  final _masterAPI = locator<MasterAPI>();
  final _pipelineAPI = locator<PipelineAPI>();

  DateTime selectedDate = DateTime.now();

  String? pipelineId;
  InformasiLainnyaViewModel({
    this.pipelineId,
  });

  Future initialize() async {
    setBusy(true);
    await getCommunityBranch();
    if (_sharedPref.get(SharedPreferenceKeys.saveDataLainnyaToLocalStorage) !=
        null) {
      await _prepopulateTextFieldsFromLocalStorage();
    }

    setBusy(false);
  }

  Future _prepopulateTextFieldsFromLocalStorage() async {
    if (_sharedPref.get(SharedPreferenceKeys.cbName) != null) {
      cbTerdekatController
        ..text = _sharedPref.get(SharedPreferenceKeys.cbName)
        ..selection =
            TextSelection.collapsed(offset: cbTerdekatController.text.length);
    }

    if (_sharedPref.get(SharedPreferenceKeys.estimasiNominalPinjaman) != null) {
      estimasiNominalPinjamanController
        ..text = _sharedPref.get(SharedPreferenceKeys.estimasiNominalPinjaman)
        ..selection = TextSelection.collapsed(
            offset: estimasiNominalPinjamanController.text.length);
    }

    if (_sharedPref.get(SharedPreferenceKeys.kodeReferalAO) != null) {
      kodeReferalAOController
        ..text = _sharedPref.get(SharedPreferenceKeys.kodeReferalAO)
        ..selection = TextSelection.collapsed(
            offset: kodeReferalAOController.text.length);
    }
  }

  final cbTerdekatController = TextEditingController();
  List<CommunityBranch> _communityBranches = [];
  List<CommunityBranch> get communityBranches => _communityBranches;
  String? _communityBranchId;
  void updateCommunityBranch(CommunityBranch communityBranch) {
    cbTerdekatController.text = communityBranch.name!.trim();
    _communityBranchId = communityBranch.id;
    getReferralAO(communityBranch.code!);
    notifyListeners();
  }

  List<CommunityBranch> filterCommunityBranch(String query) {
    return _communityBranches
        .where((element) => element.name!.toLowerCase().contains(query))
        .toList();
  }

  void clearCommunityBranch() {
    cbTerdekatController.clear();
    notifyListeners();
  }

  Future getCommunityBranch() async {
    final res = await runBusyFuture(_masterAPI.getCommunityBranches());

    res.fold(
      (errorMessage) => _showErrorDialog(errorMessage),
      (communityBranches) => _communityBranches = communityBranches,
    );
  }

  final estimasiNominalPinjamanController = TextEditingController();
  void updateEstimasiNominalPinjaman(String val) =>
      estimasiNominalPinjamanController.value.copyWith(
          text: val,
          selection:
              TextSelection(baseOffset: val.length, extentOffset: val.length));

  final frekuensiTransaksiController = TextEditingController();

  final kodeReferalAOController = TextEditingController();

  List<ReferralAO> _referralAO = [];
  List<ReferralAO> get referralAO => _referralAO;
  String? _pnAO;
  void updateReferralAO(ReferralAO referralAO) {
    kodeReferalAOController.text = referralAO.pnName!.trim();
    _pnAO = referralAO.pn;
    notifyListeners();
  }

  List<ReferralAO> filterReferralAO(String query) {
    return _referralAO
        .where((element) => element.pnName!.toLowerCase().contains(query))
        .toList();
  }

  void clearReferralAO() {
    kodeReferalAOController.clear();
    notifyListeners();
  }

  Future getReferralAO(String branchCode) async {
    final res = await runBusyFuture(_masterAPI.getReferralAO(branchCode));

    res.fold(
      (errorMessage) => _showErrorDialog(errorMessage),
      (dataReferralAO) => _referralAO = dataReferralAO,
    );
  }

  Future<Map<String, dynamic>> _generateInfoLainnyaMap() async {
    return {
      'pipelineId': int.parse(pipelineId!),
      'community_branchesId': int.parse(_communityBranchId!),
      'loanAmount': int.parse(
          estimasiNominalPinjamanController.text.trim().split('.').join()),
      'referralAO': _pnAO!,
    };
  }

  Future validateInputs() async {
    if (formKey.currentState!.validate()) {
      final response = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.confirmation,
        data: {'title': 'Konfirmasi'},
      );

      if (response != null && response.confirmed) {
        _postData();
      }
    } else {
      autoValidateMode = AutovalidateMode.always;
      _showValidationErrorDialog();
      notifyListeners();
    }
  }

  Future _postData() async {
    final infoLainnyaMap = await _generateInfoLainnyaMap();

    final res = await runBusyFuture(
        _pipelineAPI.updateInformasiLainnya(infoLainnyaMap));

    res.fold(
      (errorMessage) {
        _showErrorDialog(errorMessage);
        notifyListeners();
      },
      (successMap) => navigateToSuccessView(),
    );
  }

  Future _showErrorDialog(String errorMessage) async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Gagal',
      description: errorMessage,
      mainButtonTitle: 'COBA LAGI',
    );
  }

  Future _showValidationErrorDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.error,
      title: 'Invalid',
      description:
          'Satu atau beberapa isian ada yang kosong atau tidak sesuai validasi. Silahkan periksa kembali isian Anda.',
      mainButtonTitle: 'OK',
    );
  }

  Future navigateBack() async =>
      await _navigationService.navigateTo(Routes.informasiUsahaView,
          arguments: InformasiUsahaViewArguments(pipelineId: pipelineId!));

  Future navigateToSuccessView() async {
    await _sharedPref.removeAll();
    await _navigationService.clearStackAndShow(Routes.successView);
  }
}
