// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'province.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
class _$ProvinceTearOff {
  const _$ProvinceTearOff();

  _Province call({String? provinceCode, String? province}) {
    return _Province(
      provinceCode: provinceCode,
      province: province,
    );
  }

  Province fromJson(Map<String, Object> json) {
    return Province.fromJson(json);
  }
}

/// @nodoc
const $Province = _$ProvinceTearOff();

/// @nodoc
mixin _$Province {
  String? get provinceCode => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res>;
  $Res call({String? provinceCode, String? province});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res> implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  final Province _value;
  // ignore: unused_field
  final $Res Function(Province) _then;

  @override
  $Res call({
    Object? provinceCode = freezed,
    Object? province = freezed,
  }) {
    return _then(_value.copyWith(
      provinceCode: provinceCode == freezed
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProvinceCopyWith<$Res> implements $ProvinceCopyWith<$Res> {
  factory _$ProvinceCopyWith(_Province value, $Res Function(_Province) then) =
      __$ProvinceCopyWithImpl<$Res>;
  @override
  $Res call({String? provinceCode, String? province});
}

/// @nodoc
class __$ProvinceCopyWithImpl<$Res> extends _$ProvinceCopyWithImpl<$Res>
    implements _$ProvinceCopyWith<$Res> {
  __$ProvinceCopyWithImpl(_Province _value, $Res Function(_Province) _then)
      : super(_value, (v) => _then(v as _Province));

  @override
  _Province get _value => super._value as _Province;

  @override
  $Res call({
    Object? provinceCode = freezed,
    Object? province = freezed,
  }) {
    return _then(_Province(
      provinceCode: provinceCode == freezed
          ? _value.provinceCode
          : provinceCode // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_Province implements _Province {
  _$_Province({this.provinceCode, this.province});

  factory _$_Province.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceFromJson(json);

  @override
  final String? provinceCode;
  @override
  final String? province;

  @override
  String toString() {
    return 'Province(provinceCode: $provinceCode, province: $province)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Province &&
            (identical(other.provinceCode, provinceCode) ||
                const DeepCollectionEquality()
                    .equals(other.provinceCode, provinceCode)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provinceCode) ^
      const DeepCollectionEquality().hash(province);

  @JsonKey(ignore: true)
  @override
  _$ProvinceCopyWith<_Province> get copyWith =>
      __$ProvinceCopyWithImpl<_Province>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceToJson(this);
  }
}

abstract class _Province implements Province {
  factory _Province({String? provinceCode, String? province}) = _$_Province;

  factory _Province.fromJson(Map<String, dynamic> json) = _$_Province.fromJson;

  @override
  String? get provinceCode => throw _privateConstructorUsedError;
  @override
  String? get province => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProvinceCopyWith<_Province> get copyWith =>
      throw _privateConstructorUsedError;
}
