// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'informasi_lainnya.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InformasiLainnya _$InformasiLainnyaFromJson(Map<String, dynamic> json) {
  return _InformasiLainnya.fromJson(json);
}

/// @nodoc
class _$InformasiLainnyaTearOff {
  const _$InformasiLainnyaTearOff();

  _InformasiLainnya call(
      {String? ratingPARI, String? transactionFrequency, String? loanAmount}) {
    return _InformasiLainnya(
      ratingPARI: ratingPARI,
      transactionFrequency: transactionFrequency,
      loanAmount: loanAmount,
    );
  }

  InformasiLainnya fromJson(Map<String, Object> json) {
    return InformasiLainnya.fromJson(json);
  }
}

/// @nodoc
const $InformasiLainnya = _$InformasiLainnyaTearOff();

/// @nodoc
mixin _$InformasiLainnya {
  String? get ratingPARI => throw _privateConstructorUsedError;
  String? get transactionFrequency => throw _privateConstructorUsedError;
  String? get loanAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InformasiLainnyaCopyWith<InformasiLainnya> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformasiLainnyaCopyWith<$Res> {
  factory $InformasiLainnyaCopyWith(
          InformasiLainnya value, $Res Function(InformasiLainnya) then) =
      _$InformasiLainnyaCopyWithImpl<$Res>;
  $Res call(
      {String? ratingPARI, String? transactionFrequency, String? loanAmount});
}

/// @nodoc
class _$InformasiLainnyaCopyWithImpl<$Res>
    implements $InformasiLainnyaCopyWith<$Res> {
  _$InformasiLainnyaCopyWithImpl(this._value, this._then);

  final InformasiLainnya _value;
  // ignore: unused_field
  final $Res Function(InformasiLainnya) _then;

  @override
  $Res call({
    Object? ratingPARI = freezed,
    Object? transactionFrequency = freezed,
    Object? loanAmount = freezed,
  }) {
    return _then(_value.copyWith(
      ratingPARI: ratingPARI == freezed
          ? _value.ratingPARI
          : ratingPARI // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionFrequency: transactionFrequency == freezed
          ? _value.transactionFrequency
          : transactionFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      loanAmount: loanAmount == freezed
          ? _value.loanAmount
          : loanAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InformasiLainnyaCopyWith<$Res>
    implements $InformasiLainnyaCopyWith<$Res> {
  factory _$InformasiLainnyaCopyWith(
          _InformasiLainnya value, $Res Function(_InformasiLainnya) then) =
      __$InformasiLainnyaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? ratingPARI, String? transactionFrequency, String? loanAmount});
}

/// @nodoc
class __$InformasiLainnyaCopyWithImpl<$Res>
    extends _$InformasiLainnyaCopyWithImpl<$Res>
    implements _$InformasiLainnyaCopyWith<$Res> {
  __$InformasiLainnyaCopyWithImpl(
      _InformasiLainnya _value, $Res Function(_InformasiLainnya) _then)
      : super(_value, (v) => _then(v as _InformasiLainnya));

  @override
  _InformasiLainnya get _value => super._value as _InformasiLainnya;

  @override
  $Res call({
    Object? ratingPARI = freezed,
    Object? transactionFrequency = freezed,
    Object? loanAmount = freezed,
  }) {
    return _then(_InformasiLainnya(
      ratingPARI: ratingPARI == freezed
          ? _value.ratingPARI
          : ratingPARI // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionFrequency: transactionFrequency == freezed
          ? _value.transactionFrequency
          : transactionFrequency // ignore: cast_nullable_to_non_nullable
              as String?,
      loanAmount: loanAmount == freezed
          ? _value.loanAmount
          : loanAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
class _$_InformasiLainnya implements _InformasiLainnya {
  _$_InformasiLainnya(
      {this.ratingPARI, this.transactionFrequency, this.loanAmount});

  factory _$_InformasiLainnya.fromJson(Map<String, dynamic> json) =>
      _$$_InformasiLainnyaFromJson(json);

  @override
  final String? ratingPARI;
  @override
  final String? transactionFrequency;
  @override
  final String? loanAmount;

  @override
  String toString() {
    return 'InformasiLainnya(ratingPARI: $ratingPARI, transactionFrequency: $transactionFrequency, loanAmount: $loanAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InformasiLainnya &&
            (identical(other.ratingPARI, ratingPARI) ||
                const DeepCollectionEquality()
                    .equals(other.ratingPARI, ratingPARI)) &&
            (identical(other.transactionFrequency, transactionFrequency) ||
                const DeepCollectionEquality().equals(
                    other.transactionFrequency, transactionFrequency)) &&
            (identical(other.loanAmount, loanAmount) ||
                const DeepCollectionEquality()
                    .equals(other.loanAmount, loanAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ratingPARI) ^
      const DeepCollectionEquality().hash(transactionFrequency) ^
      const DeepCollectionEquality().hash(loanAmount);

  @JsonKey(ignore: true)
  @override
  _$InformasiLainnyaCopyWith<_InformasiLainnya> get copyWith =>
      __$InformasiLainnyaCopyWithImpl<_InformasiLainnya>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InformasiLainnyaToJson(this);
  }
}

abstract class _InformasiLainnya implements InformasiLainnya {
  factory _InformasiLainnya(
      {String? ratingPARI,
      String? transactionFrequency,
      String? loanAmount}) = _$_InformasiLainnya;

  factory _InformasiLainnya.fromJson(Map<String, dynamic> json) =
      _$_InformasiLainnya.fromJson;

  @override
  String? get ratingPARI => throw _privateConstructorUsedError;
  @override
  String? get transactionFrequency => throw _privateConstructorUsedError;
  @override
  String? get loanAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InformasiLainnyaCopyWith<_InformasiLainnya> get copyWith =>
      throw _privateConstructorUsedError;
}
