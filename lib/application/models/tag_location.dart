import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_location.freezed.dart';
part 'tag_location.g.dart';

@freezed
class TagLocation with _$TagLocation {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory TagLocation({
    String? latLng,
    String? name,
  }) = _TagLocation;

  factory TagLocation.fromJson(Map<String, dynamic> json) =>
      _$TagLocationFromJson(json);
}
