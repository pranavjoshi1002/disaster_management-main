import 'dart:developer';

import 'package:get/get.dart';

class FormController extends GetxController {
  RxInt activestepindex = 0.obs;
  RxString dobDate = "Date Of Birth".obs;
  RxString gender = "Gender".obs;

  void selectDate(DateTime date) {
    dobDate.value = '${date.year} - ${date.month} - ${date.day}';
  }

  void changeStep(int step) {
    activestepindex.value = step;
  }

  void onContinue(int stepListLength) {
    if (activestepindex.value < (stepListLength - 1)) {
      activestepindex.value += 1;
    }
  }

  void onStepCancel() {
    if (activestepindex.value == 0) {
      return;
    }
    activestepindex.value -= 1;
  }

  onComplete(Map<String, dynamic> formdata) {
    //collect all the fields data
    log(formdata.toString());
    //push field to server

    //assign username and password through sms
  }
}
