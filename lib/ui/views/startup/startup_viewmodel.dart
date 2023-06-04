import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:places_service/places_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';
import '../../../application/services/connectivity_services.dart';
import '../../../flavors.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _connectivityService = locator<ConnectivityService>();
  final _placesService = locator<PlacesService>();

  Future runStartupLogic() async {
    final connectivityResult = await _connectivityService.checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      await _navigationService.replaceWith(Routes.noNetwork);
    } else {
      _placesService.initialize(apiKey: F.variables['googleAPIKey'] as String);
      Timer(
        const Duration(seconds: 3),
        () async => await _navigationService.replaceWith(Routes.homeView),
      );
    }
  }
}
