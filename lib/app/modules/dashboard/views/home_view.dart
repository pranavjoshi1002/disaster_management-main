import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:disaster_management/app/modules/dashboard/controllers/drawerController.dart';
import 'package:disaster_management/app/modules/dashboard/controllers/homeviewController.dart';
import 'package:disaster_management/app/modules/dashboard/views/drawerView.dart';
import 'package:disaster_management/app/modules/dashboard/views/mainVolunteerScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import './pages.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<MyDrawerController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<MyDrawerController>(
      init: MyDrawerController(),
      initState: (_) {},
      builder: (_) {
        return ZoomDrawer(
          controller: _.zoomDrawerController,
          menuScreen: DrawerView(),
          mainScreen: MainVolunteerScreen(),
          borderRadius: 24.0,
          showShadow: false,
          angle: 0.0,
          slideWidth: MediaQuery.of(context).size.width * 0.35,
        );
      },
    );
  }
}
