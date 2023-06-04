import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../flavors.dart';
import '../enums/connectivity_status.dart';
import '../services/connectivity_services.dart';
import 'app.router.dart';
import 'constants/custom_color.dart';

class PinangMaksimaMicrosite extends StatelessWidget {
  const PinangMaksimaMicrosite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: const Size(425, 658),
      builder: (context, widget) => StreamProvider<ConnectivityStatus>(
        initialData: ConnectivityStatus.cellular,
        create: (context) =>
            ConnectivityService().connectionStatusController.stream,
        child: FlutterWebFrame(
          builder: (ctx) {
            return MaterialApp(
              title: F.variables['title'],
              theme: ThemeData(
                primaryColor: CustomColor.primaryColor,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                fontFamily: 'Nunito',
              ),
              navigatorKey: StackedService.navigatorKey,
              onGenerateRoute: StackedRouter().onGenerateRoute,
              debugShowCheckedModeBanner: false,
              builder: (ctx2, child) {
                return MediaQuery(
                  child: child!,
                  data: MediaQuery.of(ctx2).copyWith(textScaleFactor: 1.0),
                );
              },
            );
          },
          maximumSize: const Size(425, 658),
          enabled: kIsWeb,
          backgroundColor: Colors.grey.shade500,
        ),
      ),
    );
  }
}
