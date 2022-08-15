import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController
  final bool emergency = false;
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void isEmergency() {
    if (emergency == true) {
      
    }
  }
}
