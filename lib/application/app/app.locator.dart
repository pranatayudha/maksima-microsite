// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:places_service/places_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../infrastructure/apis/master_api.dart';
import '../../infrastructure/apis/pipeline_api.dart';
import '../services/connectivity_services.dart';
import '../services/dio_service.dart';
import '../services/media_service.dart';
import '../services/url_launcher_service.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => BottomSheetService());
  locator.registerLazySingleton(() => ConnectivityService());
  locator.registerLazySingleton(() => PlacesService());
  locator.registerLazySingleton(() => MediaService());
  locator.registerLazySingleton(() => URLLauncherService());
  locator.registerSingleton<Dio>(DioService.getInstance());
  locator.registerLazySingleton(() => MasterAPI());
  locator.registerLazySingleton(() => PipelineAPI());
}
