// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'informasi_lainnya.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InformasiLainnya _$$_InformasiLainnyaFromJson(Map json) => $checkedCreate(
      r'_$_InformasiLainnya',
      json,
      ($checkedConvert) {
        final val = _$_InformasiLainnya(
          ratingPARI: $checkedConvert('ratingPARI', (v) => v as String?),
          transactionFrequency:
              $checkedConvert('transactionFrequency', (v) => v as String?),
          loanAmount: $checkedConvert('loanAmount', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_InformasiLainnyaToJson(_$_InformasiLainnya instance) =>
    <String, dynamic>{
      'ratingPARI': instance.ratingPARI,
      'transactionFrequency': instance.transactionFrequency,
      'loanAmount': instance.loanAmount,
    };
