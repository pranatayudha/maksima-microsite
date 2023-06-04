import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/app.router.dart';
import '../../application/app/constants/endpoint.dart';
import '../../application/app/constants/shared_preference_keys.dart';
import '../../application/enums/dialog_type.dart';
import '../../application/enums/flavor_type.dart';
import '../../flavors.dart';
import '../database/shared_prefs.dart';

class ApiInterceptor extends InterceptorsWrapper {
  final NavigationService _navigationService = locator<NavigationService>();
  final _sharedPrefs = SharedPrefs();

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final bool isServerMaintenance = await _checkTime();

    if (!isServerMaintenance) {
      if (options.path == Endpoint.login) {
        options.headers['Authorization'] =
            'Basic ${F.variables['maksimaTokenBasicAuth']}';
      } else {
        final token = _sharedPrefs.get(SharedPreferenceKeys.userToken);

        options.contentType = Headers.formUrlEncodedContentType;
        options.contentType = Headers.jsonContentType;
        options.headers['Authorization'] = 'Bearer $token';
        options.headers['Accept'] = '*/*';
        options.followRedirects = false;
        options.validateStatus(1);
      }

      super.onRequest(options, handler);
    } else {
      _navigationService.clearStackAndShow(Routes.serverMaintenance);
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response!.statusCode == 401) {
      _showUnauthorizedDialog();
    }

    super.onError(err, handler);
  }

  Future _showUnauthorizedDialog() async {
    await locator<DialogService>().showCustomDialog(
      variant: DialogType.base,
      title: 'Unauthorized',
      description:
          'Mohon maaf, permintaan Anda tidak bisa dipenuhi saat ini, silahkan login ulang.',
      mainButtonTitle: 'OK',
    );
    _removeUserAndTokenInLocalDB();
    locator<NavigationService>().clearStackAndShow(Routes.homeView);
  }

  void _removeUserAndTokenInLocalDB() {
    _sharedPrefs.remove(SharedPreferenceKeys.userToken);
  }

  Future<bool> _checkTime() async {
    final now = DateTime.now();
    final nameOfDay = DateFormat('EEEE').format(now);

    if (F.appFlavor == FlavorType.prod) {
      if (nameOfDay == 'Monday' ||
          nameOfDay == 'Tuesday' ||
          nameOfDay == 'Wednesday' ||
          nameOfDay == 'Thursday') {
        if (now.hour >= 23 || now.hour < 5) {
          return true;
        }
      } else if (nameOfDay == 'Friday' ||
          nameOfDay == 'Saturday' ||
          nameOfDay == 'Sunday') {
        if (now.hour >= 21 || now.hour < 5) {
          return true;
        }
      }
    }

    return false;
  }
}
