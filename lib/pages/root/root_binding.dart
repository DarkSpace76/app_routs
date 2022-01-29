import 'package:get/get.dart';
import 'package:zwork/pages/root/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
  }
}
