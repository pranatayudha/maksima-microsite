import 'dart:io';

import 'package:flutter/material.dart';

import 'application/app/app.locator.dart';
import 'application/app/pinang_maksima_microsite.dart';
import 'application/helpers/my_http_overrides.dart';
import 'infrastructure/database/shared_prefs.dart';
import 'ui/customs/custom_bottom_sheets/setup_bottom_sheet_ui.dart';
import 'ui/customs/custom_dialogs/setup_dialog_ui.dart';

Future mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefs().init();
  setupLocator();
  setupDialogUI();
  setupBottomSheetUI();

  HttpOverrides.global = MyHttpOverrides();
  runApp(const PinangMaksimaMicrosite());
}
