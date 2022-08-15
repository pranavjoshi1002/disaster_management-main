import 'package:disaster_management/app/modules/login/controllers/login_controller.dart';
import 'package:disaster_management/app/modules/login/widgets/custom_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CustomTextFormField extends GetView<LoginController> {
  final double? width;
  final double? height;
  FocusNode? focusNode;
  TextEditingController? textController;
  String? hintText;
  final Widget? suffix;
  IconData? icon;
  bool? obsecure;
  CustomTextFormField(
      {Key? key,
      this.width,
      this.height,
      this.textController,
      this.focusNode,
      this.hintText,
      this.icon,
      this.obsecure,
      this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRoundedBox(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: width,
      height: height,
      child: Center(
        child: TextFormField(
          focusNode: focusNode ?? null,
          controller: textController,
          obscureText: obsecure ?? false,
          decoration: InputDecoration(
              suffix: suffix ?? null,
              hintText: hintText,
              icon: icon != null ? Icon(icon) : null,
              border: InputBorder.none),
        ),
      ),
    );
  }
}
