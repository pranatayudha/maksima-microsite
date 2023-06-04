import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_of_birth.freezed.dart';
part 'place_of_birth.g.dart';

@freezed
class PlaceOfBirth with _$PlaceOfBirth {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory PlaceOfBirth({
    String? city,
  }) = _PlaceOfBirth;

  factory PlaceOfBirth.fromJson(Map<String, dynamic> json) =>
      _$PlaceOfBirthFromJson(json);
}
