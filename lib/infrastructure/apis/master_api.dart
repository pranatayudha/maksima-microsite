import 'package:bridgtl_pinang_maksima_microsite/application/models/referral_ao.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http_parser/http_parser.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/endpoint.dart';
import '../../application/models/city.dart';
import '../../application/models/community_branch.dart';
import '../../application/models/district.dart';
import '../../application/models/place_of_birth.dart';
import '../../application/models/province.dart';
import '../../application/models/village.dart';

class MasterAPI {
  final Dio _dio = locator<Dio>();

  Future<Either<String, List<Province>>> getProvinces() async {
    try {
      final res = await _dio.get(
        Endpoint.province,
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      final provinces = List<Province>.from(
        res.data['data'].map(
          (i) => Province.fromJson(i as Map<String, dynamic>),
        ) as Iterable<dynamic>,
      );

      return Right(provinces);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, List<City>>> getCities(String provinceCode) async {
    try {
      final res = await _dio.get(
        '${Endpoint.city}$provinceCode&name=',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      final cities = List<City>.from(
        res.data['data'].map(
          (i) => City.fromJson(i as Map<String, dynamic>),
        ) as Iterable<dynamic>,
      );

      return Right(cities);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, List<District>>> getDistricts(
      String provinceCode, String cityCode) async {
    try {
      final res = await _dio.get(
        '${Endpoint.district}$provinceCode&cityCode=$cityCode&name=',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      final districts = List<District>.from(
        res.data['data'].map(
          (i) => District.fromJson(i as Map<String, dynamic>),
        ) as Iterable<dynamic>,
      );

      return Right(districts);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, List<Village>>> getVillages(
    String provinceCode,
    String cityCode,
    String districtCode,
  ) async {
    try {
      final res = await _dio.get(
        '${Endpoint.village}$provinceCode&cityCode=$cityCode&districtCode=$districtCode&name',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      final villages = List<Village>.from(
        res.data['data'].map(
          (i) => Village.fromJson(i as Map<String, dynamic>),
        ) as Iterable<dynamic>,
      );

      return Right(villages);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, dynamic>> getDetailByPostalCode(
    String postalKode,
  ) async {
    try {
      final res = await _dio.get(
        '${Endpoint.postalCode}$postalKode',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right(res.data['data']);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, List<PlaceOfBirth>>> getPlaceOfBirth(
      String name) async {
    try {
      final res = await _dio.get(
        '${Endpoint.placeOfBirth}$name',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      final places = List<PlaceOfBirth>.from(
        res.data['data'].map(
          (i) => PlaceOfBirth.fromJson(i as Map<String, dynamic>),
        ) as Iterable<dynamic>,
      );

      return Right(places);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, String>> upload({
    required PlatformFile file,
    required String type,
    required String subType,
    String? oldPath,
  }) async {
    try {
      List<int> bytes = file.bytes!.cast();

      final formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(
          bytes,
          filename: file.name,
          contentType: MediaType(type, subType),
        ),
        'oldPath': oldPath,
      });

      final res = await _dio.post(
        Endpoint.uploadFile,
        data: formData,
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right(res.data['data']['url'] as String);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, String>> getPublicFile(String url) async {
    try {
      final res = await _dio.get(
        '${Endpoint.publicFile}$url',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right(res.data['data']);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, List<CommunityBranch>>> getCommunityBranches() async {
    try {
      final res = await _dio.get(
        Endpoint.communityBranch,
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      final communityBranches = List<CommunityBranch>.from(
        res.data['data'].map(
          (i) => CommunityBranch.fromJson(i as Map<String, dynamic>),
        ) as Iterable<dynamic>,
      );

      return Right(communityBranches);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, List<ReferralAO>>> getReferralAO(
      String branchCode) async {
    try {
      final res = await _dio.get(
        '${Endpoint.referralAO}$branchCode',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      final referralAO = List<ReferralAO>.from(
        res.data['data'].map(
          (i) => ReferralAO.fromJson(i as Map<String, dynamic>),
        ) as Iterable<dynamic>,
      );

      return Right(referralAO);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }
}
