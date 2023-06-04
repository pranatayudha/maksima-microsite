// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Business _$$_BusinessFromJson(Map json) => $checkedCreate(
      r'_$_Business',
      json,
      ($checkedConvert) {
        final val = _$_Business(
          id: $checkedConvert('id', (v) => v as String?),
          pipelineId: $checkedConvert('pipelineId', (v) => v as String?),
          businessName: $checkedConvert('businessName', (v) => v as String?),
          jenisKomoditas:
              $checkedConvert('jenisKomoditas', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pipelineId': instance.pipelineId,
      'businessName': instance.businessName,
      'jenisKomoditas': instance.jenisKomoditas,
    };
