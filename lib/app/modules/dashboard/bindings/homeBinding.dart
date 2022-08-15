import 'package:disaster_management/app/modules/dashboard/controllers/homeviewController.dart';
import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';
import '../controllers/drawerController.dart';

class HomeViewBindings extends Bindings {
  @override
  void dependencies() {
     Get.put<MyDrawerController>(MyDrawerController());
    Get.lazyPut(() => HomeViewController());
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  
  }
}
