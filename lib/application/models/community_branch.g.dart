// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommunityBranch _$$_CommunityBranchFromJson(Map json) => $checkedCreate(
      r'_$_CommunityBranch',
      json,
      ($checkedConvert) {
        final val = _$_CommunityBranch(
          id: $checkedConvert('id', (v) => v as String?),
          code: $checkedConvert('code', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CommunityBranchToJson(_$_CommunityBranch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
    };
