// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'business.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
class _$BusinessTearOff {
  const _$BusinessTearOff();

  _Business call(
      {String? id,
      String? pipelineId,
      String? businessName,
      String? jenisKomoditas}) {
    return _Business(
      id: id,
      pipelineId: pipelineId,
      businessName: businessName,
      jenisKomoditas: jenisKomoditas,
    );
  }

  Business fromJson(Map<String, Object> json) {
    return Business.fromJson(json);
  }
}

/// @nodoc
const $Business = _$BusinessTearOff();

/// @nodoc
mixin _$Business {
  String? get id => throw _privateConstructorUsedError;
  String? get pipelineId => throw _privateConstructorUsedError;
  String? get businessName => throw _privateConstructorUsedError;
  String? get jenisKomoditas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? pipelineId,
      String? businessName,
      String? jenisKomoditas});
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res> implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  final Business _value;
  // ignore: unused_field
  final $Res Function(Business) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? pipelineId = freezed,
    Object? businessName = freezed,
    Object? jenisKomoditas = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pipelineId: pipelineId == freezed
          ? _value.pipelineId
          : pipelineId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKomoditas: jenisKomoditas == freezed
          ? _value.jenisKomoditas
          : jenisKomoditas // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$BusinessCopyWith(_Business value, $Res Function(_Business) then) =
      __$BusinessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? pipelineId,
      String? businessName,
      String? jenisKomoditas});
}

/// @nodoc
class __$BusinessCopyWithImpl<$Res> extends _$BusinessCopyWithImpl<$Res>
    implements _$BusinessCopyWith<$Res> {
  __$BusinessCopyWithImpl(_Business _value, $Res Function(_Business) _then)
      : super(_value, (v) => _then(v as _Business));

  @override
  _Business get _value => super._value as _Business;

  @override
  $Res call({
    Object? id = freezed,
    Object? pipelineId = freezed,
    Object? businessName = freezed,
    Object? jenisKomoditas = freezed,
  }) {
    return _then(_Business(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pipelineId: pipelineId == freezed
          ? _value.pipelineId
          : pipelineId // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKomoditas: jenisKomoditas == freezed
          ? _value.jenisKomoditas
          : jenisKomoditas // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_Business implements _Business {
  _$_Business(
      {this.id, this.pipelineId, this.businessName, this.jenisKomoditas});

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFromJson(json);

  @override
  final String? id;
  @override
  final String? pipelineId;
  @override
  final String? businessName;
  @override
  final String? jenisKomoditas;

  @override
  String toString() {
    return 'Business(id: $id, pipelineId: $pipelineId, businessName: $businessName, jenisKomoditas: $jenisKomoditas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Business &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.pipelineId, pipelineId) ||
                const DeepCollectionEquality()
                    .equals(other.pipelineId, pipelineId)) &&
            (identical(other.businessName, businessName) ||
                const DeepCollectionEquality()
                    .equals(other.businessName, businessName)) &&
            (identical(other.jenisKomoditas, jenisKomoditas) ||
                const DeepCollectionEquality()
                    .equals(other.jenisKomoditas, jenisKomoditas)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(pipelineId) ^
      const DeepCollectionEquality().hash(businessName) ^
      const DeepCollectionEquality().hash(jenisKomoditas);

  @JsonKey(ignore: true)
  @override
  _$BusinessCopyWith<_Business> get copyWith =>
      __$BusinessCopyWithImpl<_Business>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessToJson(this);
  }
}

abstract class _Business implements Business {
  factory _Business(
      {String? id,
      String? pipelineId,
      String? businessName,
      String? jenisKomoditas}) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get pipelineId => throw _privateConstructorUsedError;
  @override
  String? get businessName => throw _privateConstructorUsedError;
  @override
  String? get jenisKomoditas => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BusinessCopyWith<_Business> get copyWith =>
      throw _privateConstructorUsedError;
}
