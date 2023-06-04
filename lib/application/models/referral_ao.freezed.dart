// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'referral_ao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferralAO _$ReferralAOFromJson(Map<String, dynamic> json) {
  return _ReferralAO.fromJson(json);
}

/// @nodoc
class _$ReferralAOTearOff {
  const _$ReferralAOTearOff();

  _ReferralAO call({String? pn, String? pnName}) {
    return _ReferralAO(
      pn: pn,
      pnName: pnName,
    );
  }

  ReferralAO fromJson(Map<String, Object> json) {
    return ReferralAO.fromJson(json);
  }
}

/// @nodoc
const $ReferralAO = _$ReferralAOTearOff();

/// @nodoc
mixin _$ReferralAO {
  String? get pn => throw _privateConstructorUsedError;
  String? get pnName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralAOCopyWith<ReferralAO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralAOCopyWith<$Res> {
  factory $ReferralAOCopyWith(
          ReferralAO value, $Res Function(ReferralAO) then) =
      _$ReferralAOCopyWithImpl<$Res>;
  $Res call({String? pn, String? pnName});
}

/// @nodoc
class _$ReferralAOCopyWithImpl<$Res> implements $ReferralAOCopyWith<$Res> {
  _$ReferralAOCopyWithImpl(this._value, this._then);

  final ReferralAO _value;
  // ignore: unused_field
  final $Res Function(ReferralAO) _then;

  @override
  $Res call({
    Object? pn = freezed,
    Object? pnName = freezed,
  }) {
    return _then(_value.copyWith(
      pn: pn == freezed
          ? _value.pn
          : pn // ignore: cast_nullable_to_non_nullable
              as String?,
      pnName: pnName == freezed
          ? _value.pnName
          : pnName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReferralAOCopyWith<$Res> implements $ReferralAOCopyWith<$Res> {
  factory _$ReferralAOCopyWith(
          _ReferralAO value, $Res Function(_ReferralAO) then) =
      __$ReferralAOCopyWithImpl<$Res>;
  @override
  $Res call({String? pn, String? pnName});
}

/// @nodoc
class __$ReferralAOCopyWithImpl<$Res> extends _$ReferralAOCopyWithImpl<$Res>
    implements _$ReferralAOCopyWith<$Res> {
  __$ReferralAOCopyWithImpl(
      _ReferralAO _value, $Res Function(_ReferralAO) _then)
      : super(_value, (v) => _then(v as _ReferralAO));

  @override
  _ReferralAO get _value => super._value as _ReferralAO;

  @override
  $Res call({
    Object? pn = freezed,
    Object? pnName = freezed,
  }) {
    return _then(_ReferralAO(
      pn: pn == freezed
          ? _value.pn
          : pn // ignore: cast_nullable_to_non_nullable
              as String?,
      pnName: pnName == freezed
          ? _value.pnName
          : pnName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_ReferralAO implements _ReferralAO {
  _$_ReferralAO({this.pn, this.pnName});

  factory _$_ReferralAO.fromJson(Map<String, dynamic> json) =>
      _$$_ReferralAOFromJson(json);

  @override
  final String? pn;
  @override
  final String? pnName;

  @override
  String toString() {
    return 'ReferralAO(pn: $pn, pnName: $pnName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReferralAO &&
            (identical(other.pn, pn) ||
                const DeepCollectionEquality().equals(other.pn, pn)) &&
            (identical(other.pnName, pnName) ||
                const DeepCollectionEquality().equals(other.pnName, pnName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pn) ^
      const DeepCollectionEquality().hash(pnName);

  @JsonKey(ignore: true)
  @override
  _$ReferralAOCopyWith<_ReferralAO> get copyWith =>
      __$ReferralAOCopyWithImpl<_ReferralAO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferralAOToJson(this);
  }
}

abstract class _ReferralAO implements ReferralAO {
  factory _ReferralAO({String? pn, String? pnName}) = _$_ReferralAO;

  factory _ReferralAO.fromJson(Map<String, dynamic> json) =
      _$_ReferralAO.fromJson;

  @override
  String? get pn => throw _privateConstructorUsedError;
  @override
  String? get pnName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReferralAOCopyWith<_ReferralAO> get copyWith =>
      throw _privateConstructorUsedError;
}
