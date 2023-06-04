// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'district.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

District _$DistrictFromJson(Map<String, dynamic> json) {
  return _District.fromJson(json);
}

/// @nodoc
class _$DistrictTearOff {
  const _$DistrictTearOff();

  _District call({String? districtCode, String? district}) {
    return _District(
      districtCode: districtCode,
      district: district,
    );
  }

  District fromJson(Map<String, Object> json) {
    return District.fromJson(json);
  }
}

/// @nodoc
const $District = _$DistrictTearOff();

/// @nodoc
mixin _$District {
  String? get districtCode => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictCopyWith<District> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) then) =
      _$DistrictCopyWithImpl<$Res>;
  $Res call({String? districtCode, String? district});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res> implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._value, this._then);

  final District _value;
  // ignore: unused_field
  final $Res Function(District) _then;

  @override
  $Res call({
    Object? districtCode = freezed,
    Object? district = freezed,
  }) {
    return _then(_value.copyWith(
      districtCode: districtCode == freezed
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DistrictCopyWith<$Res> implements $DistrictCopyWith<$Res> {
  factory _$DistrictCopyWith(_District value, $Res Function(_District) then) =
      __$DistrictCopyWithImpl<$Res>;
  @override
  $Res call({String? districtCode, String? district});
}

/// @nodoc
class __$DistrictCopyWithImpl<$Res> extends _$DistrictCopyWithImpl<$Res>
    implements _$DistrictCopyWith<$Res> {
  __$DistrictCopyWithImpl(_District _value, $Res Function(_District) _then)
      : super(_value, (v) => _then(v as _District));

  @override
  _District get _value => super._value as _District;

  @override
  $Res call({
    Object? districtCode = freezed,
    Object? district = freezed,
  }) {
    return _then(_District(
      districtCode: districtCode == freezed
          ? _value.districtCode
          : districtCode // ignore: cast_nullable_to_non_nullable
              as String?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_District implements _District {
  _$_District({this.districtCode, this.district});

  factory _$_District.fromJson(Map<String, dynamic> json) =>
      _$$_DistrictFromJson(json);

  @override
  final String? districtCode;
  @override
  final String? district;

  @override
  String toString() {
    return 'District(districtCode: $districtCode, district: $district)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _District &&
            (identical(other.districtCode, districtCode) ||
                const DeepCollectionEquality()
                    .equals(other.districtCode, districtCode)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(districtCode) ^
      const DeepCollectionEquality().hash(district);

  @JsonKey(ignore: true)
  @override
  _$DistrictCopyWith<_District> get copyWith =>
      __$DistrictCopyWithImpl<_District>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistrictToJson(this);
  }
}

abstract class _District implements District {
  factory _District({String? districtCode, String? district}) = _$_District;

  factory _District.fromJson(Map<String, dynamic> json) = _$_District.fromJson;

  @override
  String? get districtCode => throw _privateConstructorUsedError;
  @override
  String? get district => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DistrictCopyWith<_District> get copyWith =>
      throw _privateConstructorUsedError;
}
