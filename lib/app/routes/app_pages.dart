import 'package:disaster_management/app/modules/dashboard/views/home_view.dart';
import 'package:disaster_management/app/modules/login/views/login_user_type_view.dart';
import 'package:get/get.dart';

import 'package:disaster_management/app/modules/dashboard/bindings/homeBinding.dart';
import 'package:disaster_management/app/modules/dashboard/views/dashboard_view.dart';
import 'package:disaster_management/app/modules/login/bindings/login_binding.dart';
import 'package:disaster_management/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const HOME = Routes.HOME;
  static const LOGIN = Routes.LOGIN;
  static const LOGIN_USER_TYPE = Routes.LOGIN_USER_TYPE;

  static final routes = [
    GetPage(name: _Paths.LOGIN_USER_TYPE, page: () => LoginUserViewType()),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      
    ),

    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeViewBindings(),
    ),
  ];
}
