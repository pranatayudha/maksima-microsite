import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_branch.freezed.dart';
part 'community_branch.g.dart';

@freezed
class CommunityBranch with _$CommunityBranch {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory CommunityBranch({
    String? id,
    String? code,
    String? name,
  }) = _CommunityBranch;

  factory CommunityBranch.fromJson(Map<String, dynamic> json) =>
      _$CommunityBranchFromJson(json);
}
