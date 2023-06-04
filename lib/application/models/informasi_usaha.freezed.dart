// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'informasi_usaha.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InformasiUsaha _$InformasiUsahaFromJson(Map<String, dynamic> json) {
  return _InformasiUsaha.fromJson(json);
}

/// @nodoc
class _$InformasiUsahaTearOff {
  const _$InformasiUsahaTearOff();

  _InformasiUsaha call(
      {String? businessName,
      TagLocation? tagLocation,
      String? detail,
      String? postalCode,
      String? province,
      String? city,
      String? district,
      String? village,
      String? rt,
      String? rw,
      String? createdAt,
      String? createdBy}) {
    return _InformasiUsaha(
      businessName: businessName,
      tagLocation: tagLocation,
      detail: detail,
      postalCode: postalCode,
      province: province,
      city: city,
      district: district,
      village: village,
      rt: rt,
      rw: rw,
      createdAt: createdAt,
      createdBy: createdBy,
    );
  }

  InformasiUsaha fromJson(Map<String, Object> json) {
    return InformasiUsaha.fromJson(json);
  }
}

/// @nodoc
const $InformasiUsaha = _$InformasiUsahaTearOff();

/// @nodoc
mixin _$InformasiUsaha {
  String? get businessName => throw _privateConstructorUsedError;
  TagLocation? get tagLocation => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get village => throw _privateConstructorUsedError;
  String? get rt => throw _privateConstructorUsedError;
  String? get rw => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InformasiUsahaCopyWith<InformasiUsaha> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformasiUsahaCopyWith<$Res> {
  factory $InformasiUsahaCopyWith(
          InformasiUsaha value, $Res Function(InformasiUsaha) then) =
      _$InformasiUsahaCopyWithImpl<$Res>;
  $Res call(
      {String? businessName,
      TagLocation? tagLocation,
      String? detail,
      String? postalCode,
      String? province,
      String? city,
      String? district,
      String? village,
      String? rt,
      String? rw,
      String? createdAt,
      String? createdBy});

  $TagLocationCopyWith<$Res>? get tagLocation;
}

/// @nodoc
class _$InformasiUsahaCopyWithImpl<$Res>
    implements $InformasiUsahaCopyWith<$Res> {
  _$InformasiUsahaCopyWithImpl(this._value, this._then);

  final InformasiUsaha _value;
  // ignore: unused_field
  final $Res Function(InformasiUsaha) _then;

  @override
  $Res call({
    Object? businessName = freezed,
    Object? tagLocation = freezed,
    Object? detail = freezed,
    Object? postalCode = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? village = freezed,
    Object? rt = freezed,
    Object? rw = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      tagLocation: tagLocation == freezed
          ? _value.tagLocation
          : tagLocation // ignore: cast_nullable_to_non_nullable
              as TagLocation?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      village: village == freezed
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      rt: rt == freezed
          ? _value.rt
          : rt // ignore: cast_nullable_to_non_nullable
              as String?,
      rw: rw == freezed
          ? _value.rw
          : rw // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $TagLocationCopyWith<$Res>? get tagLocation {
    if (_value.tagLocation == null) {
      return null;
    }

    return $TagLocationCopyWith<$Res>(_value.tagLocation!, (value) {
      return _then(_value.copyWith(tagLocation: value));
    });
  }
}

/// @nodoc
abstract class _$InformasiUsahaCopyWith<$Res>
    implements $InformasiUsahaCopyWith<$Res> {
  factory _$InformasiUsahaCopyWith(
          _InformasiUsaha value, $Res Function(_InformasiUsaha) then) =
      __$InformasiUsahaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? businessName,
      TagLocation? tagLocation,
      String? detail,
      String? postalCode,
      String? province,
      String? city,
      String? district,
      String? village,
      String? rt,
      String? rw,
      String? createdAt,
      String? createdBy});

  @override
  $TagLocationCopyWith<$Res>? get tagLocation;
}

/// @nodoc
class __$InformasiUsahaCopyWithImpl<$Res>
    extends _$InformasiUsahaCopyWithImpl<$Res>
    implements _$InformasiUsahaCopyWith<$Res> {
  __$InformasiUsahaCopyWithImpl(
      _InformasiUsaha _value, $Res Function(_InformasiUsaha) _then)
      : super(_value, (v) => _then(v as _InformasiUsaha));

  @override
  _InformasiUsaha get _value => super._value as _InformasiUsaha;

  @override
  $Res call({
    Object? businessName = freezed,
    Object? tagLocation = freezed,
    Object? detail = freezed,
    Object? postalCode = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? district = freezed,
    Object? village = freezed,
    Object? rt = freezed,
    Object? rw = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_InformasiUsaha(
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      tagLocation: tagLocation == freezed
          ? _value.tagLocation
          : tagLocation // ignore: cast_nullable_to_non_nullable
              as TagLocation?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      village: village == freezed
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
      rt: rt == freezed
          ? _value.rt
          : rt // ignore: cast_nullable_to_non_nullable
              as String?,
      rw: rw == freezed
          ? _value.rw
          : rw // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_InformasiUsaha implements _InformasiUsaha {
  _$_InformasiUsaha(
      {this.businessName,
      this.tagLocation,
      this.detail,
      this.postalCode,
      this.province,
      this.city,
      this.district,
      this.village,
      this.rt,
      this.rw,
      this.createdAt,
      this.createdBy});

  factory _$_InformasiUsaha.fromJson(Map<String, dynamic> json) =>
      _$$_InformasiUsahaFromJson(json);

  @override
  final String? businessName;
  @override
  final TagLocation? tagLocation;
  @override
  final String? detail;
  @override
  final String? postalCode;
  @override
  final String? province;
  @override
  final String? city;
  @override
  final String? district;
  @override
  final String? village;
  @override
  final String? rt;
  @override
  final String? rw;
  @override
  final String? createdAt;
  @override
  final String? createdBy;

  @override
  String toString() {
    return 'InformasiUsaha(businessName: $businessName, tagLocation: $tagLocation, detail: $detail, postalCode: $postalCode, province: $province, city: $city, district: $district, village: $village, rt: $rt, rw: $rw, createdAt: $createdAt, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InformasiUsaha &&
            (identical(other.businessName, businessName) ||
                const DeepCollectionEquality()
                    .equals(other.businessName, businessName)) &&
            (identical(other.tagLocation, tagLocation) ||
                const DeepCollectionEquality()
                    .equals(other.tagLocation, tagLocation)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.district, district) ||
                const DeepCollectionEquality()
                    .equals(other.district, district)) &&
            (identical(other.village, village) ||
                const DeepCollectionEquality()
                    .equals(other.village, village)) &&
            (identical(other.rt, rt) ||
                const DeepCollectionEquality().equals(other.rt, rt)) &&
            (identical(other.rw, rw) ||
                const DeepCollectionEquality().equals(other.rw, rw)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(businessName) ^
      const DeepCollectionEquality().hash(tagLocation) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(district) ^
      const DeepCollectionEquality().hash(village) ^
      const DeepCollectionEquality().hash(rt) ^
      const DeepCollectionEquality().hash(rw) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(createdBy);

  @JsonKey(ignore: true)
  @override
  _$InformasiUsahaCopyWith<_InformasiUsaha> get copyWith =>
      __$InformasiUsahaCopyWithImpl<_InformasiUsaha>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InformasiUsahaToJson(this);
  }
}

abstract class _InformasiUsaha implements InformasiUsaha {
  factory _InformasiUsaha(
      {String? businessName,
      TagLocation? tagLocation,
      String? detail,
      String? postalCode,
      String? province,
      String? city,
      String? district,
      String? village,
      String? rt,
      String? rw,
      String? createdAt,
      String? createdBy}) = _$_InformasiUsaha;

  factory _InformasiUsaha.fromJson(Map<String, dynamic> json) =
      _$_InformasiUsaha.fromJson;

  @override
  String? get businessName => throw _privateConstructorUsedError;
  @override
  TagLocation? get tagLocation => throw _privateConstructorUsedError;
  @override
  String? get detail => throw _privateConstructorUsedError;
  @override
  String? get postalCode => throw _privateConstructorUsedError;
  @override
  String? get province => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get district => throw _privateConstructorUsedError;
  @override
  String? get village => throw _privateConstructorUsedError;
  @override
  String? get rt => throw _privateConstructorUsedError;
  @override
  String? get rw => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  String? get createdBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InformasiUsahaCopyWith<_InformasiUsaha> get copyWith =>
      throw _privateConstructorUsedError;
}
