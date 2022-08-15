import 'dart:developer';

import 'package:disaster_management/app/modules/login/widgets/customButton.dart';
import 'package:disaster_management/app/modules/login/widgets/customTextFormField.dart';
import 'package:disaster_management/app/modules/login/widgets/singleSidedCurveBox.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';
import '../widgets/custom_box.dart';
import '.././helpers/login_user_type.dart';

class LoginView extends GetView<LoginController> {
  final TextEditingController _userid = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final FocusNode _useridFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  void _showSnackBar(String title, String message, SnackPosition sbarPosition) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 8,
      margin: EdgeInsets.all(10),
      snackStyle: SnackStyle.FLOATING,
      animationDuration: Duration(seconds: 1),
    );
  }

  _validateLogin(String email, String password) {
    if (email.isEmpty && password.isEmpty) {
      _showSnackBar(
          'Error', 'Please enter email and password', SnackPosition.BOTTOM);
      return false;
    }
    if (email.isEmpty) {
      _showSnackBar('Error', 'Please enter email', SnackPosition.BOTTOM);
      return false;
    }
    if (password.isEmpty) {
      _showSnackBar('Error', 'Please enter password', SnackPosition.BOTTOM);
      return false;
    }
  }

  String decideUserLoginType(LoginUserType user) {
    if (user == null) {
      return "assets/icons/volunteer.png";
    } else {
      switch (user) {
        case LoginUserType.Institute:
          return "assets/icons/college_logo.png";

        case LoginUserType.Volunteer:
          return "assets/icons/volunteer.png";

        case LoginUserType.NDRF:
          return "assets/icons/nss_logo.png";

        default:
          return "assets/icons/volunteer.png";
      }
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
            SingleSidedCurveBox(
              height: height * 0.36,
              child: Image.asset(
                decideUserLoginType(Get.arguments ?? LoginUserType.Volunteer),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: CustomTextFormField(
                focusNode: _useridFocusNode,
                textController: _userid,
                width: width * 0.84,
                height: 50,
                icon: Icons.email_outlined,
                hintText: "User ID",
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Center(
              child: Obx(() => CustomTextFormField(
                    focusNode: _passwordFocusNode,
                    textController: _password,
                    width: width * 0.84,
                    height: 50,
                    icon: Icons.lock_outline,
                    obsecure: controller.isPasswordVisible.value,
                    suffix: InkWell(
                        onTap: () {
                          controller.changeVisibility(
                              !controller.isPasswordVisible.value);
                        },
                        child: Icon(controller.isPasswordVisible.value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined)),
                    hintText: "Password",
                  )),
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: CustomButton(
                
                onTap: () {
                  _useridFocusNode.unfocus();
                  _passwordFocusNode.unfocus();
                  log("user id: " + _userid.text);
                  log("password: " + _password.text);

                  _validateLogin(_userid.text, _password.text);
                },
                width: width * 0.84,
                height: 50,
                child: Text(
                  "Login",
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
