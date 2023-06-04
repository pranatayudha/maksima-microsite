// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tag_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagLocation _$TagLocationFromJson(Map<String, dynamic> json) {
  return _TagLocation.fromJson(json);
}

/// @nodoc
class _$TagLocationTearOff {
  const _$TagLocationTearOff();

  _TagLocation call({String? latLng, String? name}) {
    return _TagLocation(
      latLng: latLng,
      name: name,
    );
  }

  TagLocation fromJson(Map<String, Object> json) {
    return TagLocation.fromJson(json);
  }
}

/// @nodoc
const $TagLocation = _$TagLocationTearOff();

/// @nodoc
mixin _$TagLocation {
  String? get latLng => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagLocationCopyWith<TagLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagLocationCopyWith<$Res> {
  factory $TagLocationCopyWith(
          TagLocation value, $Res Function(TagLocation) then) =
      _$TagLocationCopyWithImpl<$Res>;
  $Res call({String? latLng, String? name});
}

/// @nodoc
class _$TagLocationCopyWithImpl<$Res> implements $TagLocationCopyWith<$Res> {
  _$TagLocationCopyWithImpl(this._value, this._then);

  final TagLocation _value;
  // ignore: unused_field
  final $Res Function(TagLocation) _then;

  @override
  $Res call({
    Object? latLng = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TagLocationCopyWith<$Res>
    implements $TagLocationCopyWith<$Res> {
  factory _$TagLocationCopyWith(
          _TagLocation value, $Res Function(_TagLocation) then) =
      __$TagLocationCopyWithImpl<$Res>;
  @override
  $Res call({String? latLng, String? name});
}

/// @nodoc
class __$TagLocationCopyWithImpl<$Res> extends _$TagLocationCopyWithImpl<$Res>
    implements _$TagLocationCopyWith<$Res> {
  __$TagLocationCopyWithImpl(
      _TagLocation _value, $Res Function(_TagLocation) _then)
      : super(_value, (v) => _then(v as _TagLocation));

  @override
  _TagLocation get _value => super._value as _TagLocation;

  @override
  $Res call({
    Object? latLng = freezed,
    Object? name = freezed,
  }) {
    return _then(_TagLocation(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_TagLocation implements _TagLocation {
  _$_TagLocation({this.latLng, this.name});

  factory _$_TagLocation.fromJson(Map<String, dynamic> json) =>
      _$$_TagLocationFromJson(json);

  @override
  final String? latLng;
  @override
  final String? name;

  @override
  String toString() {
    return 'TagLocation(latLng: $latLng, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagLocation &&
            (identical(other.latLng, latLng) ||
                const DeepCollectionEquality().equals(other.latLng, latLng)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latLng) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$TagLocationCopyWith<_TagLocation> get copyWith =>
      __$TagLocationCopyWithImpl<_TagLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagLocationToJson(this);
  }
}

abstract class _TagLocation implements TagLocation {
  factory _TagLocation({String? latLng, String? name}) = _$_TagLocation;

  factory _TagLocation.fromJson(Map<String, dynamic> json) =
      _$_TagLocation.fromJson;

  @override
  String? get latLng => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TagLocationCopyWith<_TagLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
