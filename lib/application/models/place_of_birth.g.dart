// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_of_birth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceOfBirth _$$_PlaceOfBirthFromJson(Map json) => $checkedCreate(
      r'_$_PlaceOfBirth',
      json,
      ($checkedConvert) {
        final val = _$_PlaceOfBirth(
          city: $checkedConvert('city', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PlaceOfBirthToJson(_$_PlaceOfBirth instance) =>
    <String, dynamic>{
      'city': instance.city,
    };
