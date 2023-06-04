// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Individual _$$_IndividualFromJson(Map json) => $checkedCreate(
      r'_$_Individual',
      json,
      ($checkedConvert) {
        final val = _$_Individual(
          id: $checkedConvert('id', (v) => v as String?),
          fullName: $checkedConvert('fullName', (v) => v as String?),
          ktpNum: $checkedConvert('ktpNum', (v) => v as String?),
          placeOfBirth: $checkedConvert('placeOfBirth', (v) => v as String?),
          dateOfBirth: $checkedConvert('dateOfBirth', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          maritalStatus: $checkedConvert('maritalStatus', (v) => v as String?),
          phoneNum: $checkedConvert('phoneNum', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          ktpPath: $checkedConvert('ktpPath', (v) => v as String?),
          detail: $checkedConvert('detail', (v) => v as String?),
          postalCode: $checkedConvert('postalCode', (v) => v as String?),
          province: $checkedConvert('province', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          district: $checkedConvert('district', (v) => v as String?),
          village: $checkedConvert('village', (v) => v as String?),
          rt: $checkedConvert('rt', (v) => v as String?),
          rw: $checkedConvert('rw', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_IndividualToJson(_$_Individual instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'ktpNum': instance.ktpNum,
      'placeOfBirth': instance.placeOfBirth,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'maritalStatus': instance.maritalStatus,
      'phoneNum': instance.phoneNum,
      'email': instance.email,
      'ktpPath': instance.ktpPath,
      'detail': instance.detail,
      'postalCode': instance.postalCode,
      'province': instance.province,
      'city': instance.city,
      'district': instance.district,
      'village': instance.village,
      'rt': instance.rt,
      'rw': instance.rw,
    };
