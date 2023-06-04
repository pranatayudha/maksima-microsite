// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_of_birth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateOfBirth _$$_DateOfBirthFromJson(Map json) => $checkedCreate(
      r'_$_DateOfBirth',
      json,
      ($checkedConvert) {
        final val = _$_DateOfBirth(
          date: $checkedConvert('date', (v) => v as String?),
          newDate: $checkedConvert('newDate', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_DateOfBirthToJson(_$_DateOfBirth instance) =>
    <String, dynamic>{
      'date': instance.date,
      'newDate': instance.newDate,
    };
