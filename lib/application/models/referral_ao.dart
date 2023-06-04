import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_ao.freezed.dart';
part 'referral_ao.g.dart';

@freezed
class ReferralAO with _$ReferralAO {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory ReferralAO({
    String? pn,
    String? pnName,
  }) = _ReferralAO;

  factory ReferralAO.fromJson(Map<String, dynamic> json) =>
      _$ReferralAOFromJson(json);
}
