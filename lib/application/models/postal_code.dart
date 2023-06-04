import 'package:freezed_annotation/freezed_annotation.dart';

part 'postal_code.freezed.dart';
part 'postal_code.g.dart';

@freezed
class PostalCode with _$PostalCode {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory PostalCode({
    String? provinceCode,
    String? province,
    String? cityCode,
    String? city,
    String? districtCode,
    String? district,
    String? villageCode,
    String? village,
    String? postalCode,
  }) = _PostalCode;

  factory PostalCode.fromJson(Map<String, dynamic> json) =>
      _$PostalCodeFromJson(json);
}
