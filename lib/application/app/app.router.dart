// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../ui/shared/guided_camera_view.dart';
import '../../ui/shared/no_network.dart';
import '../../ui/shared/server_maintenance.dart';
import '../../ui/shared/success_view.dart';
import '../../ui/views/address_selection/address_selection_view.dart';
import '../../ui/views/home/home_view.dart';
import '../../ui/views/informasi_data_diri/informasi_data_diri_view.dart';
import '../../ui/views/informasi_lainnya/informasi_lainnya_view.dart';
import '../../ui/views/informasi_usaha/informasi_usaha_view.dart';
import '../../ui/views/pra_informasi/pra_informasi_view.dart';
import '../../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String praInformasiView = '/pra-informasi-view';
  static const String informasiDataDiriView = '/informasi-data-diri-view';
  static const String informasiUsahaView = '/informasi-usaha-view';
  static const String informasiLainnyaView = '/informasi-lainnya-view';
  static const String successView = '/success-view';
  static const String serverMaintenance = '/server-maintenance';
  static const String noNetwork = '/no-network';
  static const String guidedCameraView = '/guided-camera-view';
  static const String addressSelectionView = '/address-selection-view';
  static const all = <String>{
    startupView,
    homeView,
    praInformasiView,
    informasiDataDiriView,
    informasiUsahaView,
    informasiLainnyaView,
    successView,
    serverMaintenance,
    noNetwork,
    guidedCameraView,
    addressSelectionView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.praInformasiView, page: PraInformasiView),
    RouteDef(Routes.informasiDataDiriView, page: InformasiDataDiriView),
    RouteDef(Routes.informasiUsahaView, page: InformasiUsahaView),
    RouteDef(Routes.informasiLainnyaView, page: InformasiLainnyaView),
    RouteDef(Routes.successView, page: SuccessView),
    RouteDef(Routes.serverMaintenance, page: ServerMaintenance),
    RouteDef(Routes.noNetwork, page: NoNetwork),
    RouteDef(Routes.guidedCameraView, page: GuidedCameraView),
    RouteDef(Routes.addressSelectionView, page: AddressSelectionView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    PraInformasiView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PraInformasiView(),
        settings: data,
      );
    },
    InformasiDataDiriView: (data) {
      var args = data.getArgs<InformasiDataDiriViewArguments>(
        orElse: () => InformasiDataDiriViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => InformasiDataDiriView(
          key: args.key,
          pipelineId: args.pipelineId,
        ),
        settings: data,
      );
    },
    InformasiUsahaView: (data) {
      var args = data.getArgs<InformasiUsahaViewArguments>(
        orElse: () => InformasiUsahaViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => InformasiUsahaView(
          key: args.key,
          pipelineId: args.pipelineId,
        ),
        settings: data,
      );
    },
    InformasiLainnyaView: (data) {
      var args = data.getArgs<InformasiLainnyaViewArguments>(
        orElse: () => InformasiLainnyaViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => InformasiLainnyaView(
          key: args.key,
          pipelineId: args.pipelineId,
        ),
        settings: data,
      );
    },
    SuccessView: (data) {
      var args = data.getArgs<SuccessViewArguments>(
        orElse: () => SuccessViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SuccessView(
          key: args.key,
          pipelineId: args.pipelineId,
          debiturName: args.debiturName,
        ),
        settings: data,
      );
    },
    ServerMaintenance: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ServerMaintenance(),
        settings: data,
      );
    },
    NoNetwork: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NoNetwork(),
        settings: data,
      );
    },
    GuidedCameraView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const GuidedCameraView(),
        settings: data,
      );
    },
    AddressSelectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddressSelectionView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// InformasiDataDiriView arguments holder class
class InformasiDataDiriViewArguments {
  final Key? key;
  final String? pipelineId;
  InformasiDataDiriViewArguments({this.key, this.pipelineId});
}

/// InformasiUsahaView arguments holder class
class InformasiUsahaViewArguments {
  final Key? key;
  final String? pipelineId;
  InformasiUsahaViewArguments({this.key, this.pipelineId});
}

/// InformasiLainnyaView arguments holder class
class InformasiLainnyaViewArguments {
  final Key? key;
  final String? pipelineId;
  InformasiLainnyaViewArguments({this.key, this.pipelineId});
}

/// SuccessView arguments holder class
class SuccessViewArguments {
  final Key? key;
  final String? pipelineId;
  final String? debiturName;
  SuccessViewArguments({this.key, this.pipelineId, this.debiturName});
}
