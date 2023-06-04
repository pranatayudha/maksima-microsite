import 'application/enums/flavor_type.dart';
import 'flavors.dart';
import 'main_common.dart';

void main() async {
  F.appFlavor = FlavorType.dev;

  await mainCommon();
}
