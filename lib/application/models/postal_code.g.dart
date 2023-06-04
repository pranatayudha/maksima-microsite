// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postal_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostalCode _$$_PostalCodeFromJson(Map json) => $checkedCreate(
      r'_$_PostalCode',
      json,
      ($checkedConvert) {
        final val = _$_PostalCode(
          provinceCode: $checkedConvert('provinceCode', (v) => v as String?),
          province: $checkedConvert('province', (v) => v as String?),
          cityCode: $checkedConvert('cityCode', (v) => v as String?),
          city: $checkedConvert('city', (v) => v as String?),
          districtCode: $checkedConvert('districtCode', (v) => v as String?),
          district: $checkedConvert('district', (v) => v as String?),
          villageCode: $checkedConvert('villageCode', (v) => v as String?),
          village: $checkedConvert('village', (v) => v as String?),
          postalCode: $checkedConvert('postalCode', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PostalCodeToJson(_$_PostalCode instance) =>
    <String, dynamic>{
      'provinceCode': instance.provinceCode,
      'province': instance.province,
      'cityCode': instance.cityCode,
      'city': instance.city,
      'districtCode': instance.districtCode,
      'district': instance.district,
      'villageCode': instance.villageCode,
      'village': instance.village,
      'postalCode': instance.postalCode,
    };
