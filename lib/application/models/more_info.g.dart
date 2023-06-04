// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'more_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoreInfo _$$_MoreInfoFromJson(Map json) => _$_MoreInfo(
      id: json['id'] as String?,
      codeTable: json['codeTable'] as int?,
      pipelineId: json['pipelineId'] as String?,
      community_branchesId: json['community_branchesId'] as String?,
      cbName: json['cbName'] as String?,
      transactionFrequency: json['transactionFrequency'] as String?,
      loanAmount: json['loanAmount'] as String?,
      referralAO: json['referralAO'] as String?,
    );

Map<String, dynamic> _$$_MoreInfoToJson(_$_MoreInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'codeTable': instance.codeTable,
      'pipelineId': instance.pipelineId,
      'community_branchesId': instance.community_branchesId,
      'cbName': instance.cbName,
      'transactionFrequency': instance.transactionFrequency,
      'loanAmount': instance.loanAmount,
      'referralAO': instance.referralAO,
    };
