import 'package:get/get.dart';
import 'package:thkerny_app/controller/azkar_controller.dart';
import 'package:thkerny_app/controller/azkar_details_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AzkarController(), fenix: true);
    Get.lazyPut(() => AzkarDetailsController(), fenix: true);
  }
}
