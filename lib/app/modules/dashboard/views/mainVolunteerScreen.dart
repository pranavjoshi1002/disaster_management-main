import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:disaster_management/app/modules/dashboard/controllers/homeviewController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../controllers/drawerController.dart';
import '../views/pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainVolunteerScreen extends GetView<HomeViewController> {
  //defining the pages icons
  final _pageIcons = <IconData>[
    Icons.home_outlined,
    Icons.chat_outlined,
    Icons.location_on_outlined,
    Icons.cloud_outlined,
  ];

  //defining the pages titles
  final _pageTitles = <String>[
    'Home',
    'Chat',
    'Map',
    'Weather',
  ];

  //textStyle for the page titles
  final _pageTitlesTextStyle = GoogleFonts.poppins();

  //method for switching the pages
  Widget currentPage(int index) {
    switch (index) {
      case 0:
        return DashboardView();
      case 1:
        return ChatView();
      case 2:
        return MapView();
      case 3:
        return WeatherView();
      default:
        return DashboardView();
    }
  }

  final autoSizeGroup = AutoSizeGroup();
  final controller = Get.put(HomeViewController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff373FFF),
        child: Icon(
          Icons.search_outlined,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
          gapLocation: GapLocation.center,
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
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 60,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.find<MyDrawerController>().toggleDrawer();
                  },
                  borderRadius: BorderRadius.circular(25),
                  splashColor: Colors.grey.shade200,
                  child: Ink(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(124, 224, 224, 224),
                              offset: Offset(2, 2),
                              blurRadius: 15,
                            )
                          ],
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(child: Icon(CupertinoIcons.bars))),
                )
              ],
            ),
          ),
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
