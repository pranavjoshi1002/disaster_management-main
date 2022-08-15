import 'package:disaster_management/app/modules/dashboard/bindings/homeBinding.dart';
import 'package:disaster_management/app/modules/dashboard/views/admin_dashboard_view.dart';
import 'package:disaster_management/app/modules/dashboard/views/alertform.dart';
import 'package:disaster_management/app/modules/dashboard/views/emergency_view.dart';
import 'package:disaster_management/app/modules/dashboard/views/mainAdminScreen.dart';
import 'package:disaster_management/app/modules/dashboard/views/mainVolunteerScreen.dart';
import 'package:disaster_management/app/modules/login/views/forget_password.dart';
import 'package:disaster_management/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import './app/modules/login/bindings/login_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    GetMaterialApp(
      title: "Application",
      initialBinding: HomeViewBindings(),
      // initialRoute: AppPages.HOME,
      // getPages: AppPages.routes,
      home: EmergencyView(),
    ),
  );
}
