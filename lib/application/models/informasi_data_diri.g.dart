// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'informasi_data_diri.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InformasiDataDiri _$$_InformasiDataDiriFromJson(Map json) => $checkedCreate(
      r'_$_InformasiDataDiri',
      json,
      ($checkedConvert) {
        final val = _$_InformasiDataDiri(
          id: $checkedConvert('id', (v) => v as String?),
          ktpNum: $checkedConvert('ktpNum', (v) => v as String?),
          npwpNum: $checkedConvert('npwpNum', (v) => v as String?),
          fullName: $checkedConvert('fullName', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          dateOfBirth: $checkedConvert(
              'dateOfBirth',
              (v) => v == null
                  ? null
                  : DateOfBirth.fromJson(Map<String, dynamic>.from(v as Map))),
          dateOfExpiredKTP:
              $checkedConvert('dateOfExpiredKTP', (v) => v as String?),
          dateOfIssuedKTP:
              $checkedConvert('dateOfIssuedKTP', (v) => v as String?),
          placeOfBirth: $checkedConvert('placeOfBirth', (v) => v as String?),
          motherMaiden: $checkedConvert('motherMaiden', (v) => v as String?),
          maritalStatus: $checkedConvert('maritalStatus', (v) => v as String?),
          kkNum: $checkedConvert('kkNum', (v) => v as String?),
          numberOfDependents:
              $checkedConvert('numberOfDependents', (v) => v as int?),
          lastEducation: $checkedConvert('lastEducation', (v) => v as String?),
          religion: $checkedConvert('religion', (v) => v as String?),
          phoneNum: $checkedConvert('phoneNum', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          spouseKtpNum: $checkedConvert('spouseKtpNum', (v) => v as String?),
          spouseFullname:
              $checkedConvert('spouseFullname', (v) => v as String?),
          spouseDateOfBirth: $checkedConvert(
              'spouseDateOfBirth',
              (v) => v == null
                  ? null
                  : DateOfBirth.fromJson(Map<String, dynamic>.from(v as Map))),
          spousePlaceOfBirth:
              $checkedConvert('spousePlaceOfBirth', (v) => v as String?),
          ktpPath: $checkedConvert('ktpPath', (v) => v as String?),
          npwpPath: $checkedConvert('npwpPath', (v) => v as String?),
          ktpSelfiePath: $checkedConvert('ktpSelfiePath', (v) => v as String?),
          spouseKtpPath: $checkedConvert('spouseKtpPath', (v) => v as String?),
          kkPath: $checkedConvert('kkPath', (v) => v as String?),
          marriagePath: $checkedConvert('marriagePath', (v) => v as String?),
          divorcePath: $checkedConvert('divorcePath', (v) => v as String?),
          deathCertificatePath:
              $checkedConvert('deathCertificatePath', (v) => v as String?),
          tagLocation: $checkedConvert(
              'tagLocation',
              (v) => v == null
                  ? null
                  : TagLocation.fromJson(Map<String, dynamic>.from(v as Map))),
          detail: $checkedConvert('detail', (v) => v as String?),
          postalCode: $checkedConvert('postalCode', (v) => v as String?),
          province: $checkedConvert('province', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          district: $checkedConvert('district', (v) => v as String?),
          village: $checkedConvert('village', (v) => v as String?),
          rt: $checkedConvert('rt', (v) => v as String?),
          rw: $checkedConvert('rw', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          typePipeline: $checkedConvert('typePipeline', (v) => v as String?),
          initial: $checkedConvert('initial', (v) => v as String?),
          pipeline_flagId:
              $checkedConvert('pipeline_flagId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_InformasiDataDiriToJson(
        _$_InformasiDataDiri instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ktpNum': instance.ktpNum,
      'npwpNum': instance.npwpNum,
      'fullName': instance.fullName,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth?.toJson(),
      'dateOfExpiredKTP': instance.dateOfExpiredKTP,
      'dateOfIssuedKTP': instance.dateOfIssuedKTP,
      'placeOfBirth': instance.placeOfBirth,
      'motherMaiden': instance.motherMaiden,
      'maritalStatus': instance.maritalStatus,
      'kkNum': instance.kkNum,
      'numberOfDependents': instance.numberOfDependents,
      'lastEducation': instance.lastEducation,
      'religion': instance.religion,
      'phoneNum': instance.phoneNum,
      'email': instance.email,
      'spouseKtpNum': instance.spouseKtpNum,
      'spouseFullname': instance.spouseFullname,
      'spouseDateOfBirth': instance.spouseDateOfBirth?.toJson(),
      'spousePlaceOfBirth': instance.spousePlaceOfBirth,
      'ktpPath': instance.ktpPath,
      'npwpPath': instance.npwpPath,
      'ktpSelfiePath': instance.ktpSelfiePath,
      'spouseKtpPath': instance.spouseKtpPath,
      'kkPath': instance.kkPath,
      'marriagePath': instance.marriagePath,
      'divorcePath': instance.divorcePath,
      'deathCertificatePath': instance.deathCertificatePath,
      'tagLocation': instance.tagLocation?.toJson(),
      'detail': instance.detail,
      'postalCode': instance.postalCode,
      'province': instance.province,
      'city': instance.city,
      'district': instance.district,
      'village': instance.village,
      'rt': instance.rt,
      'rw': instance.rw,
      'createdAt': instance.createdAt,
      'createdBy': instance.createdBy,
      'typePipeline': instance.typePipeline,
      'initial': instance.initial,
      'pipeline_flagId': instance.pipeline_flagId,
    };
