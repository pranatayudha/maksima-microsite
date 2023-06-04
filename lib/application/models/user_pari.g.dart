// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pari.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPari _$$_UserPariFromJson(Map<String, dynamic> json) => _$_UserPari(
      idPari: json['idPari'] as String?,
      fullName: json['fullName'] as String?,
      phoneNum: json['phoneNum'] as String?,
      stateDanaFreeze: json['stateDanaFreeze'] as bool?,
      frekuensiTransaksi: json['frekuensiTransaksi'] as int?,
      jenisKomoditas: json['jenisKomoditas'] as String?,
      pipelineId: json['pipelineId'] as String?,
    );

Map<String, dynamic> _$$_UserPariToJson(_$_UserPari instance) =>
    <String, dynamic>{
      'idPari': instance.idPari,
      'fullName': instance.fullName,
      'phoneNum': instance.phoneNum,
      'stateDanaFreeze': instance.stateDanaFreeze,
      'frekuensiTransaksi': instance.frekuensiTransaksi,
      'jenisKomoditas': instance.jenisKomoditas,
      'pipelineId': instance.pipelineId,
    };
