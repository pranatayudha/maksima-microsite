// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'informasi_lainnya.freezed.dart';
part 'informasi_lainnya.g.dart';

@freezed
class InformasiLainnya with _$InformasiLainnya {
  // ignore: invalid_annotation_target
  @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory InformasiLainnya({
    String? ratingPARI,
    String? transactionFrequency,
    String? loanAmount,
  }) = _InformasiLainnya;

  factory InformasiLainnya.fromJson(Map<String, dynamic> json) =>
      _$InformasiLainnyaFromJson(json);
}
