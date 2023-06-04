import 'package:bridgtl_pinang_maksima_microsite/flavors.dart';
import 'package:dio/dio.dart';

import '../../infrastructure/apis/api_interceptor.dart';

class DioService {
  static Dio getInstance() {
    final dio = Dio(BaseOptions(
      baseUrl: F.variables['maksimaURL'],
      connectTimeout: 60000,
    ));

    dio.interceptors.add(ApiInterceptor());

    return dio;
  }
}
