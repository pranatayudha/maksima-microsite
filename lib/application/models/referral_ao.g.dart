// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_ao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferralAO _$$_ReferralAOFromJson(Map json) => $checkedCreate(
      r'_$_ReferralAO',
      json,
      ($checkedConvert) {
        final val = _$_ReferralAO(
          pn: $checkedConvert('pn', (v) => v as String?),
          pnName: $checkedConvert('pnName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ReferralAOToJson(_$_ReferralAO instance) =>
    <String, dynamic>{
      'pn': instance.pn,
      'pnName': instance.pnName,
    };
