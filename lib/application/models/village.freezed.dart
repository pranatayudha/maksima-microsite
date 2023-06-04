// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'village.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Village _$VillageFromJson(Map<String, dynamic> json) {
  return _Village.fromJson(json);
}

/// @nodoc
class _$VillageTearOff {
  const _$VillageTearOff();

  _Village call({String? villageCode, String? village}) {
    return _Village(
      villageCode: villageCode,
      village: village,
    );
  }

  Village fromJson(Map<String, Object> json) {
    return Village.fromJson(json);
  }
}

/// @nodoc
const $Village = _$VillageTearOff();

/// @nodoc
mixin _$Village {
  String? get villageCode => throw _privateConstructorUsedError;
  String? get village => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VillageCopyWith<Village> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VillageCopyWith<$Res> {
  factory $VillageCopyWith(Village value, $Res Function(Village) then) =
      _$VillageCopyWithImpl<$Res>;
  $Res call({String? villageCode, String? village});
}

/// @nodoc
class _$VillageCopyWithImpl<$Res> implements $VillageCopyWith<$Res> {
  _$VillageCopyWithImpl(this._value, this._then);

  final Village _value;
  // ignore: unused_field
  final $Res Function(Village) _then;

  @override
  $Res call({
    Object? villageCode = freezed,
    Object? village = freezed,
  }) {
    return _then(_value.copyWith(
      villageCode: villageCode == freezed
          ? _value.villageCode
          : villageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      village: village == freezed
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VillageCopyWith<$Res> implements $VillageCopyWith<$Res> {
  factory _$VillageCopyWith(_Village value, $Res Function(_Village) then) =
      __$VillageCopyWithImpl<$Res>;
  @override
  $Res call({String? villageCode, String? village});
}

/// @nodoc
class __$VillageCopyWithImpl<$Res> extends _$VillageCopyWithImpl<$Res>
    implements _$VillageCopyWith<$Res> {
  __$VillageCopyWithImpl(_Village _value, $Res Function(_Village) _then)
      : super(_value, (v) => _then(v as _Village));

  @override
  _Village get _value => super._value as _Village;

  @override
  $Res call({
    Object? villageCode = freezed,
    Object? village = freezed,
  }) {
    return _then(_Village(
      villageCode: villageCode == freezed
          ? _value.villageCode
          : villageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      village: village == freezed
          ? _value.village
          : village // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_Village implements _Village {
  _$_Village({this.villageCode, this.village});

  factory _$_Village.fromJson(Map<String, dynamic> json) =>
      _$$_VillageFromJson(json);

  @override
  final String? villageCode;
  @override
  final String? village;

  @override
  String toString() {
    return 'Village(villageCode: $villageCode, village: $village)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Village &&
            (identical(other.villageCode, villageCode) ||
                const DeepCollectionEquality()
                    .equals(other.villageCode, villageCode)) &&
            (identical(other.village, village) ||
                const DeepCollectionEquality().equals(other.village, village)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(villageCode) ^
      const DeepCollectionEquality().hash(village);

  @JsonKey(ignore: true)
  @override
  _$VillageCopyWith<_Village> get copyWith =>
      __$VillageCopyWithImpl<_Village>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VillageToJson(this);
  }
}

abstract class _Village implements Village {
  factory _Village({String? villageCode, String? village}) = _$_Village;

  factory _Village.fromJson(Map<String, dynamic> json) = _$_Village.fromJson;

  @override
  String? get villageCode => throw _privateConstructorUsedError;
  @override
  String? get village => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VillageCopyWith<_Village> get copyWith =>
      throw _privateConstructorUsedError;
}
