import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool isPasswordVisible = true.obs;
  changeVisibility(bool value) {
    isPasswordVisible.value = value;
  }




}
