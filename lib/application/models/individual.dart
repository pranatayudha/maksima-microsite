import 'package:freezed_annotation/freezed_annotation.dart';

part 'individual.freezed.dart';
part 'individual.g.dart';

@freezed
class Individual with _$Individual {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory Individual({
    String? id,
    String? fullName,
    String? ktpNum,
    String? placeOfBirth,
    String? dateOfBirth,
    String? gender,
    String? maritalStatus,
    String? phoneNum,
    String? email,
    String? ktpPath,
    String? detail,
    String? postalCode,
    String? province,
    String? city,
    String? district,
    String? village,
    String? rt,
    String? rw,
  }) = _Individual;

  factory Individual.fromJson(Map<String, dynamic> json) =>
      _$IndividualFromJson(json);
}
