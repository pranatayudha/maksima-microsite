// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'informasi_usaha.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InformasiUsaha _$$_InformasiUsahaFromJson(Map json) => $checkedCreate(
      r'_$_InformasiUsaha',
      json,
      ($checkedConvert) {
        final val = _$_InformasiUsaha(
          businessName: $checkedConvert('businessName', (v) => v as String?),
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
        );
        return val;
      },
    );

Map<String, dynamic> _$$_InformasiUsahaToJson(_$_InformasiUsaha instance) =>
    <String, dynamic>{
      'businessName': instance.businessName,
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
    };
