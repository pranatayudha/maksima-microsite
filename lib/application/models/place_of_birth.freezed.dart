// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_of_birth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceOfBirth _$PlaceOfBirthFromJson(Map<String, dynamic> json) {
  return _PlaceOfBirth.fromJson(json);
}

/// @nodoc
class _$PlaceOfBirthTearOff {
  const _$PlaceOfBirthTearOff();

  _PlaceOfBirth call({String? city}) {
    return _PlaceOfBirth(
      city: city,
    );
  }

  PlaceOfBirth fromJson(Map<String, Object> json) {
    return PlaceOfBirth.fromJson(json);
  }
}

/// @nodoc
const $PlaceOfBirth = _$PlaceOfBirthTearOff();

/// @nodoc
mixin _$PlaceOfBirth {
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOfBirthCopyWith<PlaceOfBirth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOfBirthCopyWith<$Res> {
  factory $PlaceOfBirthCopyWith(
          PlaceOfBirth value, $Res Function(PlaceOfBirth) then) =
      _$PlaceOfBirthCopyWithImpl<$Res>;
  $Res call({String? city});
}

/// @nodoc
class _$PlaceOfBirthCopyWithImpl<$Res> implements $PlaceOfBirthCopyWith<$Res> {
  _$PlaceOfBirthCopyWithImpl(this._value, this._then);

  final PlaceOfBirth _value;
  // ignore: unused_field
  final $Res Function(PlaceOfBirth) _then;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlaceOfBirthCopyWith<$Res>
    implements $PlaceOfBirthCopyWith<$Res> {
  factory _$PlaceOfBirthCopyWith(
          _PlaceOfBirth value, $Res Function(_PlaceOfBirth) then) =
      __$PlaceOfBirthCopyWithImpl<$Res>;
  @override
  $Res call({String? city});
}

/// @nodoc
class __$PlaceOfBirthCopyWithImpl<$Res> extends _$PlaceOfBirthCopyWithImpl<$Res>
    implements _$PlaceOfBirthCopyWith<$Res> {
  __$PlaceOfBirthCopyWithImpl(
      _PlaceOfBirth _value, $Res Function(_PlaceOfBirth) _then)
      : super(_value, (v) => _then(v as _PlaceOfBirth));

  @override
  _PlaceOfBirth get _value => super._value as _PlaceOfBirth;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_PlaceOfBirth(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_PlaceOfBirth implements _PlaceOfBirth {
  _$_PlaceOfBirth({this.city});

  factory _$_PlaceOfBirth.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceOfBirthFromJson(json);

  @override
  final String? city;

  @override
  String toString() {
    return 'PlaceOfBirth(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceOfBirth &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$PlaceOfBirthCopyWith<_PlaceOfBirth> get copyWith =>
      __$PlaceOfBirthCopyWithImpl<_PlaceOfBirth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceOfBirthToJson(this);
  }
}

abstract class _PlaceOfBirth implements PlaceOfBirth {
  factory _PlaceOfBirth({String? city}) = _$_PlaceOfBirth;

  factory _PlaceOfBirth.fromJson(Map<String, dynamic> json) =
      _$_PlaceOfBirth.fromJson;

  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceOfBirthCopyWith<_PlaceOfBirth> get copyWith =>
      throw _privateConstructorUsedError;
}
