// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TagLocation _$$_TagLocationFromJson(Map json) => $checkedCreate(
      r'_$_TagLocation',
      json,
      ($checkedConvert) {
        final val = _$_TagLocation(
          latLng: $checkedConvert('latLng', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_TagLocationToJson(_$_TagLocation instance) =>
    <String, dynamic>{
      'latLng': instance.latLng,
      'name': instance.name,
    };
