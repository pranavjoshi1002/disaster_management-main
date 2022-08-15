import 'dart:developer';

import 'package:disaster_management/app/modules/login/widgets/customButton.dart';
import 'package:disaster_management/app/modules/login/widgets/customTextFormField.dart';
import 'package:disaster_management/app/modules/login/widgets/singleSidedCurveBox.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../widgets/custom_box.dart';
import '.././helpers/login_user_type.dart';

class ForgetPassword extends GetView<LoginController> {
  final TextEditingController _userid = TextEditingController();
  @override
  final controller = Get.put(LoginController());
  final FocusNode _useridFocusNode = FocusNode();

  void _showSnackBar(String title, String message, SnackPosition sbarPosition) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 8,
      margin: const EdgeInsets.all(10),
      snackStyle: SnackStyle.FLOATING,
      animationDuration: const Duration(seconds: 1),
    );
  }

  _validateLogin(String email) {
    if (email.isEmpty) {
      _showSnackBar(
          'Error', 'Please enter email', SnackPosition.BOTTOM);
      return false;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff373FFF)),
        elevation: 0,
        backgroundColor: Color(0xff767CFF).withOpacity(0.07),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SingleSidedCurveBox(
                  height: height * 0.36,
                  child: Image.asset('assets/icons/sparan_logo.png'),
                ),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back),)
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: CustomTextFormField(
                focusNode: _useridFocusNode,
                textController: _userid,
                width: width * 0.84,
                height: 50,
                icon: Icons.email_outlined,
                hintText: "Email",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: CustomButton(
                onTap: () {
                  _useridFocusNode.unfocus();
                 
                  _validateLogin(_userid.text);
                },
                width: width * 0.54,
                height: 50,
                child: const Text(
                  "Send Reset Link",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
