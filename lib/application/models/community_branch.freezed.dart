// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'community_branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommunityBranch _$CommunityBranchFromJson(Map<String, dynamic> json) {
  return _CommunityBranch.fromJson(json);
}

/// @nodoc
class _$CommunityBranchTearOff {
  const _$CommunityBranchTearOff();

  _CommunityBranch call({String? id, String? code, String? name}) {
    return _CommunityBranch(
      id: id,
      code: code,
      name: name,
    );
  }

  CommunityBranch fromJson(Map<String, Object> json) {
    return CommunityBranch.fromJson(json);
  }
}

/// @nodoc
const $CommunityBranch = _$CommunityBranchTearOff();

/// @nodoc
mixin _$CommunityBranch {
  String? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityBranchCopyWith<CommunityBranch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityBranchCopyWith<$Res> {
  factory $CommunityBranchCopyWith(
          CommunityBranch value, $Res Function(CommunityBranch) then) =
      _$CommunityBranchCopyWithImpl<$Res>;
  $Res call({String? id, String? code, String? name});
}

/// @nodoc
class _$CommunityBranchCopyWithImpl<$Res>
    implements $CommunityBranchCopyWith<$Res> {
  _$CommunityBranchCopyWithImpl(this._value, this._then);

  final CommunityBranch _value;
  // ignore: unused_field
  final $Res Function(CommunityBranch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CommunityBranchCopyWith<$Res>
    implements $CommunityBranchCopyWith<$Res> {
  factory _$CommunityBranchCopyWith(
          _CommunityBranch value, $Res Function(_CommunityBranch) then) =
      __$CommunityBranchCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? code, String? name});
}

/// @nodoc
class __$CommunityBranchCopyWithImpl<$Res>
    extends _$CommunityBranchCopyWithImpl<$Res>
    implements _$CommunityBranchCopyWith<$Res> {
  __$CommunityBranchCopyWithImpl(
      _CommunityBranch _value, $Res Function(_CommunityBranch) _then)
      : super(_value, (v) => _then(v as _CommunityBranch));

  @override
  _CommunityBranch get _value => super._value as _CommunityBranch;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_CommunityBranch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
class _$_CommunityBranch implements _CommunityBranch {
  _$_CommunityBranch({this.id, this.code, this.name});

  factory _$_CommunityBranch.fromJson(Map<String, dynamic> json) =>
      _$$_CommunityBranchFromJson(json);

  @override
  final String? id;
  @override
  final String? code;
  @override
  final String? name;

  @override
  String toString() {
    return 'CommunityBranch(id: $id, code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommunityBranch &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CommunityBranchCopyWith<_CommunityBranch> get copyWith =>
      __$CommunityBranchCopyWithImpl<_CommunityBranch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommunityBranchToJson(this);
  }
}

abstract class _CommunityBranch implements CommunityBranch {
  factory _CommunityBranch({String? id, String? code, String? name}) =
      _$_CommunityBranch;

  factory _CommunityBranch.fromJson(Map<String, dynamic> json) =
      _$_CommunityBranch.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CommunityBranchCopyWith<_CommunityBranch> get copyWith =>
      throw _privateConstructorUsedError;
}
