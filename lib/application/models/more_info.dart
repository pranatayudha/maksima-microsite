// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_info.freezed.dart';
part 'more_info.g.dart';

@freezed
class MoreInfo with _$MoreInfo {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: false, anyMap: true, explicitToJson: true)
  factory MoreInfo({
    String? id,
    int? codeTable,
    String? pipelineId,
    String? community_branchesId,
    String? cbName,
    String? transactionFrequency,
    String? loanAmount,
    String? referralAO,
  }) = _MoreInfo;

  factory MoreInfo.fromJson(Map<String, dynamic> json) =>
      _$MoreInfoFromJson(json);
}
