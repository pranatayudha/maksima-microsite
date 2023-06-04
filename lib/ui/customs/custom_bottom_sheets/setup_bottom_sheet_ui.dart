// import 'package:pinang_mikro/ui/customs/custom_bottom_sheets/confirmation_bottom_sheet2.dart';

import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/enums/bottom_sheet_type.dart';
import 'confirmation_bottom_sheet.dart';
import 'wajib_npwp_bottom_sheet.dart';

void setupBottomSheetUI() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.confirmation: (context, sheetRequest, completer) =>
        ConfirmationBottomSheet(
            request: sheetRequest as SheetRequest,
            completer: completer as Function(SheetResponse)),
    BottomSheetType.wajibNPWP: (context, sheetRequest, completer) =>
        WajibNPWPBottomSheet(
            request: sheetRequest as SheetRequest,
            completer: completer as Function(SheetResponse)),
    // BottomSheetType.confirmation2: (context, sheetRequest, completer) =>
    //     ConfirmationBottomSheet2(
    //         request: sheetRequest as SheetRequest,
    //         completer: completer as Function(SheetResponse)),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
