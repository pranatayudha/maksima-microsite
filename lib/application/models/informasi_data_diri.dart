// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import 'date_of_birth.dart';
import 'tag_location.dart';

part 'informasi_data_diri.freezed.dart';
part 'informasi_data_diri.g.dart';

@freezed
class InformasiDataDiri with _$InformasiDataDiri {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory InformasiDataDiri({
    String? id,
    String? ktpNum,
    String? npwpNum,
    String? fullName,
    String? gender,
    DateOfBirth? dateOfBirth,
    String? dateOfExpiredKTP,
    String? dateOfIssuedKTP,
    String? placeOfBirth,
    String? motherMaiden,
    String? maritalStatus,
    String? kkNum,
    int? numberOfDependents,
    String? lastEducation,
    String? religion,
    String? phoneNum,
    String? email,
    String? spouseKtpNum,
    String? spouseFullname,
    DateOfBirth? spouseDateOfBirth,
    String? spousePlaceOfBirth,
    String? ktpPath,
    String? npwpPath,
    String? ktpSelfiePath,
    String? spouseKtpPath,
    String? kkPath,
    String? marriagePath,
    String? divorcePath,
    String? deathCertificatePath,
    TagLocation? tagLocation,
    String? detail,
    String? postalCode,
    String? province,
    String? city,
    String? district,
    String? village,
    String? rt,
    String? rw,
    String? createdAt,
    String? createdBy,
    String? typePipeline,
    String? initial,
    String? pipeline_flagId,
  }) = _InformasiDataDiri;

  factory InformasiDataDiri.fromJson(Map<String, dynamic> json) =>
      _$InformasiDataDiriFromJson(json);
}
