import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/endpoint.dart';
import '../../application/app/constants/shared_preference_keys.dart';
import '../../application/models/business.dart';
import '../../application/models/individual.dart';
import '../../application/models/more_info.dart';
import '../../application/models/user_pari.dart';
import '../database/shared_prefs.dart';

class PipelineAPI {
  final Dio _dio = locator<Dio>();
  final _sharedPrefs = SharedPrefs();

  Future<Either<String, bool>> login(
    Map<String, dynamic> payload,
  ) async {
    try {
      final res = await _dio.post(
        Endpoint.login,
        data: payload,
      );

      _sharedPrefs.set(
          SharedPreferenceKeys.userToken, res.data['data']['accessToken']);

      return Right(res.data['success']);
    } on DioError catch (e) {
      if (e.response!.statusCode == 409) {
        return const Left(
          'Nomor handphone tersebut sudah melakukan pengajuan, silahkan input ulang nomor handphone yang sudah terdaftar di aplikasi PARI',
        );
      } else {
        return const Left('User tidak terdaftar');
      }
    }
  }

  Future<Either<String, UserPari>> getUserPari() async {
    try {
      final res = await _dio.get(
        Endpoint.getUserPari,
      );

      if (res.data['success'] != true) {
        return const Left('User tidak terdaftar');
      } else {
        return Right(
            UserPari.fromJson(res.data['data'] as Map<String, dynamic>));
      }
    } catch (e) {
      return const Left('User tidak terdaftar');
    }
  }

  Future<Either<String, Individual>> getIndividual(String pipelineId) async {
    try {
      final res = await _dio.get(
        '${Endpoint.getInformasiDataDiri}$pipelineId',
      );

      return Right(
          Individual.fromJson(res.data['data'] as Map<String, dynamic>));
    } on DioError catch (e) {
      if (e.response!.statusCode == 409) {
        return const Left(
            'Nomor handphone tersebut sudah melakukan pengajuan, silahkan input ulang nomor handphone yang sudah terdaftar di aplikasi PARI');
      } else {
        return const Left('User tidak terdaftar');
      }
    }
  }

  Future<Either<String, Map<String, dynamic>>> addInformasiDataDiri(
    Map<String, dynamic> payload,
  ) async {
    try {
      final res = await _dio.post(
        Endpoint.addInformasiDataDiri,
        data: payload,
      );

      if (res.data['success'] != true) {
        if (res.data['code'] == 409) {
          return const Left('Nomor KTP sudah digunakan');
        } else {
          return Left(res.data['message']);
        }
      } else {
        return Right({
          'id': res.data['data']['id'],
          'message': res.data['message'],
        });
      }
    } on DioError catch (e) {
      if (e.response!.statusCode == 409) {
        return const Left('Nomor KTP sudah digunakan');
      } else {
        return Left(e.response!.data['message'] as String);
      }
    }
  }

  Future<Either<String, Map<String, dynamic>>> updateInformasiDataDiri(
    Map<String, dynamic> payload,
  ) async {
    try {
      final res = await _dio.put(
        Endpoint.updateInformasiDataDiri,
        data: payload,
      );

      if (res.data['success'] != true) {
        return Left(res.data['message']);
      } else {
        return Right({
          'id': res.data['data']['id'],
          'message': res.data['message'],
        });
      }
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, Business>> getBusiness(String pipelineId) async {
    try {
      final res = await _dio.get(
        '${Endpoint.getInformasiUsaha}$pipelineId',
      );

      if (res.data['success'] != true) {
        return const Left('User tidak terdaftar');
      } else {
        return Right(
            Business.fromJson(res.data['data'] as Map<String, dynamic>));
      }
    } catch (e) {
      return const Left('User tidak terdaftar');
    }
  }

  Future<Either<String, Map<String, String>>> addInformasiUsaha(
    Map<String, dynamic> payload,
  ) async {
    try {
      final res = await _dio.post(
        Endpoint.addInformasiUsaha,
        data: payload,
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right({
        'message': res.data['message'] as String,
      });
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, Map<String, String>>> updateInformasiUsaha(
    Map<String, dynamic> payload,
  ) async {
    try {
      final res = await _dio.put(
        Endpoint.updateInformasiUsaha,
        data: payload,
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right({
        'message': res.data['message'] as String,
      });
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, MoreInfo>> getMoreInfo(String pipelineId) async {
    try {
      final res = await _dio.get(
        '${Endpoint.getInformasiLainnya}$pipelineId',
      );

      if (res.data['success'] != true) {
        return const Left('User tidak terdaftar');
      } else {
        return Right(
            MoreInfo.fromJson(res.data['data'] as Map<String, dynamic>));
      }
    } catch (e) {
      return const Left('User tidak terdaftar');
    }
  }

  Future<Either<String, Map<String, String>>> updateInformasiLainnya(
    Map<String, dynamic> payload,
  ) async {
    try {
      final res = await _dio.put(
        Endpoint.updateInformasiLainnya,
        data: payload,
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right({
        'message': res.data['message'] as String,
      });
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, Map<String, dynamic>>> getInformasiDataDiri(
    String pipelineId,
  ) async {
    try {
      final res = await _dio.get(
        '${Endpoint.getInformasiDataDiri}$pipelineId',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message']);
      } else {
        return Right({
          'id': res.data['data']['id'],
          'message': res.data['message'],
        });
      }
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, Map<String, String>>> getInformasiUsaha(
    String pipelineId,
  ) async {
    try {
      final res = await _dio.get(
        '${Endpoint.getInformasiUsaha}$pipelineId',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right({
        'message': res.data['message'] as String,
      });
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, Map<String, String>>> getInformasiLainnya(
    String pipelineId,
  ) async {
    try {
      final res = await _dio.get(
        '${Endpoint.getInformasiLainnya}$pipelineId',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right({
        'message': res.data['message'] as String,
      });
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }

  Future<Either<String, bool>> deleteAll(
    String pipelineId,
  ) async {
    try {
      final res = await _dio.delete(
        '${Endpoint.delete}$pipelineId',
      );

      if (res.data['success'] != true) {
        return Left(res.data['message'] as String);
      }

      return Right(res.data['success']);
    } on DioError catch (e) {
      return Left(e.response!.data['message'] as String);
    }
  }
}
