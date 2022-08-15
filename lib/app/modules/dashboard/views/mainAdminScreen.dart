import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:disaster_management/app/modules/dashboard/controllers/homeviewController.dart';
import 'package:disaster_management/app/modules/dashboard/views/admin_dashboard_view.dart';
import 'package:disaster_management/app/modules/dashboard/views/emergency_view.dart';
import 'package:flutter/material.dart';
import '../views/pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAdminScreen extends GetView<HomeViewController> {
  //defining the pages icons
  final _pageIcons = <IconData>[
    Icons.notification_important_outlined,
    Icons.location_on_outlined,
    Icons.apps,
    Icons.chat_outlined,
    Icons.cloud_outlined,
  ];

  //defining the pages titles
  final _pageTitles = <String>[
    'Alert',
    'Map',
    'Menu',
    'Chat',
    'Weather',
  ];

  //textStyle for the page titles
  final _pageTitlesTextStyle = GoogleFonts.poppins();

  //method for switching the pages
  Widget currentPage(int index) {
    switch (index) {
      case 0:
        return EmergencyView();
      case 1:
        return MapView();
      case 2:
        return AdminDashboardView();
      case 3:
        return ChatView();
      case 4:
        return WeatherView();
      default:
        return AdminDashboardView();
    }
  }

  final autoSizeGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    HomeViewController controller = Get.put(HomeViewController());
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: Obx(
        () => AnimatedBottomNavigationBar.builder(
          itemCount: _pageIcons.length,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? Color(0xff373FFF) : Color(0xff2C363D);
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  _pageIcons[index],
                  size: 22,
                  color: color,
                ),
                const SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: AutoSizeText(
                    _pageTitles[index],
                    maxLines: 1,
                    style: _pageTitlesTextStyle.copyWith(
                      color: color,
                      fontSize: 12,
                    ),
                    group: autoSizeGroup,
                  ),
                )
              ],
            );
          },
          backgroundColor: Colors.white,
          activeIndex: controller.currentPageIndex,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.defaultEdge,
          gapLocation: GapLocation.none,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (int index) {
            controller.changeBottomNavagationBarIndex(index);
          },
          shadow: BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 12,
            spreadRadius: 0.5,
            color: Color.fromARGB(99, 158, 158, 158),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => currentPage(controller.currentPageIndex),
            ),
          ),
        ],
      ),
    );
  }
}
