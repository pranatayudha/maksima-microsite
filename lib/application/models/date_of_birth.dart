import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_of_birth.freezed.dart';
part 'date_of_birth.g.dart';

@freezed
class DateOfBirth with _$DateOfBirth {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory DateOfBirth({
    String? date,
    String? newDate,
  }) = _DateOfBirth;

  factory DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$DateOfBirthFromJson(json);
}
