import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_pari.freezed.dart';
part 'user_pari.g.dart';

@freezed
class UserPari with _$UserPari {
  // ignore: invalid_annotation_target
  // @JsonSerializable(checked: true, anyMap: true, explicitToJson: true)
  factory UserPari({
    String? idPari,
    String? fullName,
    String? phoneNum,
    bool? stateDanaFreeze,
    int? frekuensiTransaksi,
    String? jenisKomoditas,
    String? pipelineId,
  }) = _UserPari;

  factory UserPari.fromJson(Map<String, dynamic> json) =>
      _$UserPariFromJson(json);
}
