import 'package:dio/dio.dart';
import 'package:places_service/places_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../infrastructure/apis/master_api.dart';
import '../../infrastructure/apis/pipeline_api.dart';
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
import '../services/connectivity_services.dart';
import '../services/dio_service.dart';
import '../services/media_service.dart';
import '../services/url_launcher_service.dart';

@StackedApp(
  routes: [
    /** View */
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: PraInformasiView),
    MaterialRoute(page: InformasiDataDiriView),
    MaterialRoute(page: InformasiUsahaView),
    MaterialRoute(page: InformasiLainnyaView),
    MaterialRoute(page: SuccessView),

    /** Services View */
    MaterialRoute(page: ServerMaintenance),
    MaterialRoute(page: NoNetwork),
    MaterialRoute(page: GuidedCameraView),
    MaterialRoute(page: AddressSelectionView),
  ],
  dependencies: [
    /** Services */
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: ConnectivityService),
    LazySingleton(classType: PlacesService),
    LazySingleton(classType: MediaService),
    LazySingleton(classType: URLLauncherService),

    /** API */
    Singleton(
      classType: DioService,
      resolveUsing: DioService.getInstance,
      asType: Dio,
    ),
    LazySingleton(classType: MasterAPI),
    LazySingleton(classType: PipelineAPI),
  ],
)
class AppSetUp {}
