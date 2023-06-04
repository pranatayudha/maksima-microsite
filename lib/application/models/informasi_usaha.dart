// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import 'tag_location.dart';

part 'informasi_usaha.freezed.dart';
part 'informasi_usaha.g.dart';

@freezed
class InformasiUsaha with _$InformasiUsaha {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory InformasiUsaha({
    String? businessName,
    TagLocation? tagLocation,
    String? detail,
    String? postalCode,
    String? province,
    String? city,
    String? district,
    String? village,
    String? rt,
    String? rw,
    String? createdAt,
    String? createdBy,
  }) = _InformasiUsaha;

  factory InformasiUsaha.fromJson(Map<String, dynamic> json) =>
      _$InformasiUsahaFromJson(json);
}
