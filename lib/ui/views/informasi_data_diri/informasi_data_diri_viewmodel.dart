// ignore_for_file: unnecessary_null_comparison

import 'package:bridgtl_pinang_maksima_microsite/application/app/constants/shared_preference_keys.dart';
import 'package:bridgtl_pinang_maksima_microsite/infrastructure/database/shared_prefs.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/app/constants/custom_color.dart';
import '../../../application/enums/dialog_type.dart';
import '../../../application/enums/pipeline_api_method.dart';
import '../../../application/helpers/date_string_formatter.dart';
import '../../../application/models/place_of_birth.dart';
import '../../../application/models/postal_code.dart';
import '../../../application/services/media_service.dart';
import '../../../infrastructure/apis/master_api.dart';
import '../../../infrastructure/apis/pipeline_api.dart';
import 'package:path/path.dart' as p;

class InformasiDataDiriViewModel extends BaseViewModel {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.onUserInteraction;

  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _mediaService = locator<MediaService>();
  final _sharedPref = SharedPrefs();

  final _masterAPI = locator<MasterAPI>();
  final _pipelineAPI = locator<PipelineAPI>();

  DateTime selectedDate = DateTime(DateTime.now().year);
  List<PostalCode> _postalCode = [];
  List<PostalCode> _postalCodeSecond = [];

  String? pipelineId;
  InformasiDataDiriViewModel({
    this.pipelineId,
  });

  Future initialize() async {
    setBusy(true);

    if (_sharedPref.get(SharedPreferenceKeys.nomorHandphone) != null) {
      final _splitWithout62 =
          _sharedPref.get(SharedPreferenceKeys.nomorHandphone).split('+62');
      noHpController.text = _splitWithout62[1];
    }

    if (_sharedPref.get(SharedPreferenceKeys.saveDataDiriToLocalStorage) !=
        null) {
      await _prepopulateTextFieldsFromLocalStorage();
    }
    setBusy(false);
  }

  Future _prepopulateTextFieldsFromLocalStorage() async {
    if (_sharedPref.get(SharedPreferenceKeys.namaLengkap) != null) {
      namaLengkapController.text =
          _sharedPref.get(SharedPreferenceKeys.namaLengkap);
    }

    if (_sharedPref.get(SharedPreferenceKeys.nomorKTP) != null) {
      nomorKtpController.text = _sharedPref.get(SharedPreferenceKeys.nomorKTP);
    }

    if (_sharedPref.get(SharedPreferenceKeys.tempatLahir) != null) {
      tempatLahirController.text =
          _sharedPref.get(SharedPreferenceKeys.tempatLahir);
    }

    if (_sharedPref.get(SharedPreferenceKeys.tanggalLahir) != null) {
      tglLahirController.text = DateStringFormatter.forInput(
          _sharedPref.get(SharedPreferenceKeys.tanggalLahir));
    }

    if (_sharedPref.get(SharedPreferenceKeys.jenisKelamin) != null) {
      jenisKelaminController.text =
          _sharedPref.get(SharedPreferenceKeys.jenisKelamin);
    }

    if (_sharedPref.get(SharedPreferenceKeys.statusPerkawinan) != null) {
      statusPerkawinanController.text =
          _sharedPref.get(SharedPreferenceKeys.statusPerkawinan);
    }

    if (_sharedPref.get(SharedPreferenceKeys.detailAlamatTinggal) != null) {
      detailAlamatTinggalController.text =
          _sharedPref.get(SharedPreferenceKeys.detailAlamatTinggal);
    }

    if (_sharedPref.get(SharedPreferenceKeys.kodePos) != null) {
      postalCodeAlamatTinggalController.text =
          _sharedPref.get(SharedPreferenceKeys.kodePos);
    }

    if (_sharedPref.get(SharedPreferenceKeys.provinsi) != null) {
      provinceAlamatTinggalController.text =
          _sharedPref.get(SharedPreferenceKeys.provinsi);
    }

    if (_sharedPref.get(SharedPreferenceKeys.kota) != null) {
      cityAlamatTinggalController.text =
          _sharedPref.get(SharedPreferenceKeys.kota);
    }

    if (_sharedPref.get(SharedPreferenceKeys.kecamatan) != null) {
      districtAlamatTinggalController.text =
          _sharedPref.get(SharedPreferenceKeys.kecamatan);
    }

    if (_sharedPref.get(SharedPreferenceKeys.kelurahan) != null) {
      villageAlamatTinggalController.text =
          _sharedPref.get(SharedPreferenceKeys.kelurahan);
    }

    if (_sharedPref.get(SharedPreferenceKeys.rt) != null) {
      rtAlamatTinggalController.text = _sharedPref.get(SharedPreferenceKeys.rt);
    }

    if (_sharedPref.get(SharedPreferenceKeys.rw) != null) {
      rwAlamatTinggalController.text = _sharedPref.get(SharedPreferenceKeys.rw);
    }

    if (_sharedPref.get(SharedPreferenceKeys.email) != null) {
      emailController.text = _sharedPref.get(SharedPreferenceKeys.email);
    }

    if (_sharedPref.get(SharedPreferenceKeys.fotoKtp) != null) {
      fotoKtpPublicUrl =
          await _getPublicFile(_sharedPref.get(SharedPreferenceKeys.fotoKtp));
      fotoKtpUrl = _sharedPref.get(SharedPreferenceKeys.fotoKtp);
      notifyListeners();
    }
  }

  final jenisController = TextEditingController();

  final nomorKtpController = TextEditingController();
  void updateNomorKTP(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.nomorKTP, val);
    nomorKtpController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
  }

  final namaLengkapController = TextEditingController();
  void updateNamaLengkap(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.namaLengkap, val);

    namaLengkapController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
  }

  final tempatLahirController = TextEditingController();

  void updateTempatLahir(String val) async {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.tempatLahir, val);

    tempatLahirController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
    notifyListeners();
  }

  final tglLahirController = TextEditingController();
  void updateTglLahir(String val) {
    tglLahirController.text = val.trim();
  }

  Future selectTglLahir(BuildContext context) async {
    DateTime? pickedDate = await _showingDatePicker(context);
    if (pickedDate != null) {
      _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
      _sharedPref.set(SharedPreferenceKeys.tanggalLahir, pickedDate.toString());
      updateTglLahir(DateFormat('dd/MM/yyyy').format(pickedDate).toString());
    }
  }

  final jenisKelaminController = TextEditingController();
  void updateJenisKelamin(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.jenisKelamin, val);

    jenisKelaminController.text = val;
    notifyListeners();
  }

  final statusPerkawinanController = TextEditingController();
  void updateMaritalStatus(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.statusPerkawinan, val);

    statusPerkawinanController.text = val;
    notifyListeners();
  }

  final detailAlamatTinggalController = TextEditingController();
  void updateDetailAlamatTinggal(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.detailAlamatTinggal, val);

    detailAlamatTinggalController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
  }

  final postalCodeAlamatTinggalController = TextEditingController();
  void updatePostalCodeAlamatTinggal(String val) async {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.kodePos, val);

    postalCodeAlamatTinggalController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
    provinceAlamatTinggalController.clear();
    cityAlamatTinggalController.clear();
    districtAlamatTinggalController.clear();
    villageAlamatTinggalController.clear();
    getPostalCode(postalCodeAlamatTinggalController.text);
  }

  Future updatePostalCode(PostalCode ritelPostalCode) async {
    provinceAlamatTinggalController.text = ritelPostalCode.province!;
    cityAlamatTinggalController.text = ritelPostalCode.city!;
    districtAlamatTinggalController.text = ritelPostalCode.district!;
    notifyListeners();
  }

  Future getPostalCode(
    String postalCode,
  ) async {
    final res =
        await runBusyFuture(_masterAPI.getDetailByPostalCode(postalCode));

    res.fold(
      (error) => error,
      (result) {
        final postalCode = List<PostalCode>.from(
          result.map(
            (i) => PostalCode.fromJson(i as Map<String, dynamic>),
          ),
        );
        _postalCode = postalCode;
        provinceAlamatTinggalController.text =
            _postalCode[0].province.toString();
        _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
        _sharedPref.set(
            SharedPreferenceKeys.provinsi, _postalCode[0].province.toString());

        cityAlamatTinggalController.text = _postalCode[0].city.toString();
        _sharedPref.set(
            SharedPreferenceKeys.kota, _postalCode[0].city.toString());
      },
    );
  }

  void clearPostalCode() {
    postalCodeAlamatTinggalController.clear();
    provinceAlamatTinggalController.clear();
    cityAlamatTinggalController.clear();
    districtAlamatTinggalController.clear();
    villageAlamatTinggalController.clear();
    notifyListeners();
  }

  final provinceAlamatTinggalController = TextEditingController();

  final cityAlamatTinggalController = TextEditingController();

  final districtAlamatTinggalController = TextEditingController();
  Future updateDistrict(PostalCode ritelPostalCode) async {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.kecamatan, ritelPostalCode.district!);

    districtAlamatTinggalController.text = ritelPostalCode.district!.trim();
    notifyListeners();

    await getVillage(
      ritelPostalCode.postalCode!,
    );
  }

  Future getVillage(
    String postalCode,
  ) async {
    final res = await runBusyFuture(
      _masterAPI.getDetailByPostalCode(postalCode),
    );

    res.fold(
      (error) => error,
      (result) {
        final postalCode = List<PostalCode>.from(
          result.map(
            (i) => PostalCode.fromJson(i as Map<String, dynamic>),
          ),
        );
        _postalCodeSecond = postalCode;
      },
    );
  }

  void clearDistrict() {
    districtAlamatTinggalController.clear();
    notifyListeners();
  }

  List<PostalCode> filterDistrict(String query) {
    List<PostalCode> res = [];
    PostalCode temp = PostalCode();
    for (var i = 0; i < _postalCode.length; i++) {
      if (i == 0) {
        temp = _postalCode[i];
      } else if (temp.district != _postalCode[i].district!) {
        res.add(temp);
        temp = _postalCode[i];
      }
    }

    res.add(temp);

    return res.toList();
  }

  final villageAlamatTinggalController = TextEditingController();
  void updateVillageAlamatTinggal(PostalCode postalCode) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.kelurahan, postalCode.village!);

    villageAlamatTinggalController.text = postalCode.village!.trim();
    notifyListeners();
  }

  List<PostalCode> filterVillage(String query) {
    return _postalCodeSecond
        .where((element) => element.village!.toLowerCase().contains(query))
        .toList();
  }

  void clearVillage() {
    villageAlamatTinggalController.clear();
    notifyListeners();
  }

  final rtAlamatTinggalController = TextEditingController();
  void updateRtAlamatTinggal(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.rt, val);

    rtAlamatTinggalController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
  }

  final rwAlamatTinggalController = TextEditingController();
  void updateRwAlamatTinggal(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.rw, val);

    rwAlamatTinggalController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
  }

  final noHpController = TextEditingController();

  final emailController = TextEditingController();
  void updateEmail(String val) {
    _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
    _sharedPref.set(SharedPreferenceKeys.email, val);

    emailController.value.copyWith(
        text: val,
        selection:
            TextSelection(baseOffset: val.length, extentOffset: val.length));
  }

  PlatformFile? fotoKtp;
  String? fotoKtpErrorText;
  String? fotoKtpPublicUrl;
  String? fotoKtpUrl;
  bool _isLoadingKtp = false;
  bool get isLoadingKtp => _isLoadingKtp;
  Future uploadFileKtp(PlatformFile file) async {
    final res = await runBusyFuture(_masterAPI.upload(
      file: file,
      type: 'image',
      subType: p.extension(file.name).split('.').join(),
      oldPath: fotoKtpUrl,
    ));

    res.fold(
      (errorMessage) => _showErrorDialog(errorMessage),
      (url) async {
        _sharedPref.set(SharedPreferenceKeys.saveDataDiriToLocalStorage, true);
        _sharedPref.set(SharedPreferenceKeys.fotoKtp, url);
        _isLoadingKtp = false;
        fotoKtpUrl = url;
        fotoKtpPublicUrl = await _getPublicFile(url);
        notifyListeners();
      },
    );
  }

  Future captureKtp() async {
    final res =
        await _mediaService.getFile(allowedExtensions: ['png, jpg, jpeg']);

    if (res != null) {
      _isLoadingKtp = true;
      notifyListeners();
      if (_isLoadingKtp) {
        fotoKtp = res.files[0];
        if (p.extension(fotoKtp!.name) == '.jpg' ||
            p.extension(fotoKtp!.name) == '.jpeg' ||
            p.extension(fotoKtp!.name) == '.png') {
          fotoKtpErrorText = null;
          uploadFileKtp(fotoKtp!);
        } else {
          _showErrorDialog('File yang diperbolehkan hanya jpg, jpeg, atau png');
        }
        notifyListeners();
      }
    }
  }

  Future clearKtp() async {
    final response = await _dialogService.showCustomDialog(
      variant: DialogType.base,
      title: 'Hapus Foto',
      description: 'Anda yakin akan menghapus foto E-KTP  ini?',
      data: {'color': CustomColor.primaryRed80},
      mainButtonTitle: 'Hapus',
      secondaryButtonTitle: 'Tidak',
    );

    if (response!.confirmed) {
      fotoKtp = null;
      fotoKtpUrl = null;
      fotoKtpPublicUrl = null;
      notifyListeners();
    }
  }

  Future<String> _getPublicFile(String url) async {
    String _temp = '';
    final res = await runBusyFuture(
      _masterAPI.getPublicFile(url),
    );

    res.fold(
      (err) => _temp = '',
      (success) => _temp = success,
    );

    return _temp;
  }

  bool _validateUploadFiles() {
    return fotoKtpPublicUrl != null;
  }

  void _setUploadFilesErrorTextIfAny() {
    if (fotoKtpPublicUrl == null) {
      fotoKtpErrorText = 'Foto E-KTP harus diupload';
    }
  }

  Future validateInputs() async {
    if (formKey.currentState!.validate() && _validateUploadFiles()) {
      if (_sharedPref.get(SharedPreferenceKeys.methodUpdateDataDiri) != null) {
        _postData(PipelineAPIMethod.updateDataDiri);
      } else {
        _postData(PipelineAPIMethod.addDataDiri);
      }
    } else {
      autoValidateMode = AutovalidateMode.always;
      _setUploadFilesErrorTextIfAny();
      _showValidationErrorDialog();
      notifyListeners();
    }
  }

  Future<Map<String, dynamic>> _generateDataDiriAddressMap() async {
    return {
      'detail': detailAlamatTinggalController.text.trim(),
      'postalCode': postalCodeAlamatTinggalController.text.trim(),
      'province': provinceAlamatTinggalController.text.trim(),
      'city': cityAlamatTinggalController.text.trim(),
      'district': districtAlamatTinggalController.text.trim(),
      'village': villageAlamatTinggalController.text.trim(),
      'rt': rtAlamatTinggalController.text.isNotEmpty
          ? rtAlamatTinggalController.text.trim()
          : '',
      'rw': rwAlamatTinggalController.text.isNotEmpty
          ? rwAlamatTinggalController.text.trim()
          : '',
    };
  }

  Future<Map<String, dynamic>> _generateInfoDataDiriMap(
      {required String method}) async {
    final dataDiriAddressMap = await _generateDataDiriAddressMap();

    if (method == 'add') {
      return {
        'ktpNum': nomorKtpController.text.trim(),
        'fullName': namaLengkapController.text.trim(),
        'gender': jenisKelaminController.text.trim(),
        'dateOfBirth': tglLahirController.text.trim(),
        'placeOfBirth': tempatLahirController.text.trim(),
        'maritalStatus': statusPerkawinanController.text.trim(),
        'phoneNum': '+62${noHpController.text.trim()}',
        'email':
            emailController.text.isNotEmpty ? emailController.text.trim() : '',
        'ktpPath': fotoKtpUrl,
        ...dataDiriAddressMap,
      };
    } else {
      return {
        'pipelineId': int.parse(pipelineId!),
        'ktpNum': nomorKtpController.text.trim(),
        'fullName': namaLengkapController.text.trim(),
        'gender': jenisKelaminController.text.trim(),
        'dateOfBirth': tglLahirController.text.trim(),
        'placeOfBirth': tempatLahirController.text.trim(),
        'maritalStatus': statusPerkawinanController.text.trim(),
        'phoneNum': '+62${noHpController.text.trim()}',
        'email':
            emailController.text.isNotEmpty ? emailController.text.trim() : '',
        'ktpPath': fotoKtpUrl,
        ...dataDiriAddressMap,
      };
    }
  }

  Future _postData(PipelineAPIMethod pipelineAPIMethod) async {
    switch (pipelineAPIMethod) {
      case PipelineAPIMethod.addDataDiri:
        final infoDataDiriMap = await _generateInfoDataDiriMap(method: 'add');
        final res = await runBusyFuture(
            _pipelineAPI.addInformasiDataDiri(infoDataDiriMap));

        res.fold(
          (errorMessage) {
            _showErrorDialog(errorMessage);
            notifyListeners();
          },
          (successMap) async {
            pipelineId = successMap['id'] as String;
            _sharedPref.set(SharedPreferenceKeys.pipelineId, pipelineId);
            _sharedPref.set(SharedPreferenceKeys.methodUpdateDataDiri, true);

            await _navigateToInformasUsaha();
          },
        );
        break;

      case PipelineAPIMethod.updateDataDiri:
        final infoDataDiriMap =
            await _generateInfoDataDiriMap(method: 'update');
        final res = await runBusyFuture(
            _pipelineAPI.updateInformasiDataDiri(infoDataDiriMap));

        res.fold(
          (errorMessage) {
            _showErrorDialog(errorMessage);
            notifyListeners();
          },
          (successMap) async {
            pipelineId = successMap['id'] as String;
            _sharedPref.set(SharedPreferenceKeys.pipelineId, pipelineId);

            await _navigateToInformasUsaha();
          },
        );
        break;
      case PipelineAPIMethod.addDataUsaha:
        break;
      case PipelineAPIMethod.updateDataUsaha:
        break;
      case PipelineAPIMethod.addDataLainnya:
        break;
      case PipelineAPIMethod.updateDataLainnya:
        break;
    }
  }

  Future navigateBack() async {
    final response = await _dialogService.showCustomDialog(
      variant: DialogType.base,
      title: 'Apakah Anda ingin keluar dari halaman ini?',
      description: 'Data yang sebelumnya Anda isi akan hilang.',
      data: {'color': CustomColor.primaryRed80},
      mainButtonTitle: 'Ya',
      secondaryButtonTitle: 'Tidak',
    );

    if (response!.confirmed) {
      if (pipelineId != null) {
        await _deletePipeline();
      }

      _sharedPref.removeAll();

      // if (_sharedPref.get(SharedPreferenceKeys.saveDataDiriToLocalStorage) !=
      //     null) {
      //   _deleteDataDiriLocalStorage();
      // }

      // if (_sharedPref.get(SharedPreferenceKeys.saveDataUsahaToLocalStorage) !=
      //     null) {
      //   _deleteDataUsahaLocalStorage();
      // }

      // if (_sharedPref.get(SharedPreferenceKeys.saveDataLainnyaToLocalStorage) !=
      //     null) {
      //   _deleteDataLainnyaLocalStorage();
      // }

      _navigationService.navigateTo(Routes.praInformasiView);
    }
  }

  Future _deletePipeline() async {
    final res = await runBusyFuture(_pipelineAPI.deleteAll(pipelineId!));

    res.fold(
      (errorMessage) {
        _showErrorDialog(errorMessage);
        notifyListeners();
      },
      (successMap) {
        notifyListeners();
      },
    );
  }

  void _deleteDataDiriLocalStorage() {
    _sharedPref.remove(SharedPreferenceKeys.saveDataDiriToLocalStorage);
    _sharedPref.remove(SharedPreferenceKeys.methodUpdateDataDiri);
    _sharedPref.remove(SharedPreferenceKeys.nomorKTP);
    _sharedPref.remove(SharedPreferenceKeys.namaLengkap);
    _sharedPref.remove(SharedPreferenceKeys.tempatLahir);
    _sharedPref.remove(SharedPreferenceKeys.tanggalLahir);
    _sharedPref.remove(SharedPreferenceKeys.jenisKelamin);
    _sharedPref.remove(SharedPreferenceKeys.statusPerkawinan);
    _sharedPref.remove(SharedPreferenceKeys.detailAlamatTinggal);
    _sharedPref.remove(SharedPreferenceKeys.kodePos);
    _sharedPref.remove(SharedPreferenceKeys.provinsi);
    _sharedPref.remove(SharedPreferenceKeys.kota);
    _sharedPref.remove(SharedPreferenceKeys.kecamatan);
    _sharedPref.remove(SharedPreferenceKeys.kelurahan);
    _sharedPref.remove(SharedPreferenceKeys.rt);
    _sharedPref.remove(SharedPreferenceKeys.rw);
    _sharedPref.remove(SharedPreferenceKeys.nomorHandphone);
    _sharedPref.remove(SharedPreferenceKeys.email);
    _sharedPref.remove(SharedPreferenceKeys.fotoKtp);
  }

  void _deleteDataUsahaLocalStorage() {
    _sharedPref.remove(SharedPreferenceKeys.saveDataUsahaToLocalStorage);
    _sharedPref.remove(SharedPreferenceKeys.methodUpdateDataUsaha);
    _sharedPref.remove(SharedPreferenceKeys.namaUsaha);
    _sharedPref.remove(SharedPreferenceKeys.jenisKomoditas);
  }

  void _deleteDataLainnyaLocalStorage() {
    _sharedPref.remove(SharedPreferenceKeys.saveDataLainnyaToLocalStorage);
    _sharedPref.remove(SharedPreferenceKeys.methodUpdateDataLainnya);
    _sharedPref.remove(SharedPreferenceKeys.cbName);
    _sharedPref.remove(SharedPreferenceKeys.cbId);
    _sharedPref.remove(SharedPreferenceKeys.estimasiNominalPinjaman);
    _sharedPref.remove(SharedPreferenceKeys.frekuensiTransaksi);
    _sharedPref.remove(SharedPreferenceKeys.kodeReferalAO);
  }

  Future<DateTime> _showingDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      initialDatePickerMode: DatePickerMode.year,
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year),
    );

    return picked!;
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

  Future _navigateToInformasUsaha() async {
    await _navigationService.navigateTo(Routes.informasiUsahaView,
        arguments: InformasiUsahaViewArguments(pipelineId: pipelineId!));
  }
}
