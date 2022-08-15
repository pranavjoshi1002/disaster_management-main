import 'package:disaster_management/app/modules/dashboard/views/home_view.dart';
import 'package:disaster_management/app/modules/dashboard/widgets/customDrawer.dart';
import 'package:disaster_management/app/modules/dashboard/widgets/customListTile.dart';
import 'package:disaster_management/app/modules/login/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/drawerController.dart';

class DrawerView extends StatelessWidget {
  final MyDrawerController? drawerController;
  DrawerView({Key? key, this.drawerController}) : super(key: key);

  final zoomDrawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).padding.top);
    print(MediaQuery.of(context).padding.left);
    return Material(
      child: Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 5),
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(color: Color(0xff373fff)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: UserAccountsDrawerHeader(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 69, 76, 255),
                            borderRadius: BorderRadius.circular(15)),
                        currentAccountPicture: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            'DM',
                            style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        accountName: Text("User Name"),
                        accountEmail: Text("user@gmail.com")),
                  ),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 32, horizontal: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 69, 76, 255),
                          borderRadius: BorderRadius.circular(25)),
                      child: InkWell(
                          onTap: () {
                            Get.find<MyDrawerController>().toggleDrawer();
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Column(
                children: [
                  CustomListTile(
                    leadingIcon: Icons.check_circle_outline,
                    title: "Available",
                    onTap: () {},
                  ),
                  CustomListTile(
                    leadingIcon: Icons.people_outline_outlined,
                    title: "About Us",
                    onTap: () {},
                  ),
                  CustomListTile(
                    leadingIcon: Icons.play_circle_outline,
                    title: "Videos",
                    onTap: () {},
                  ),
                  CustomListTile(
                    leadingIcon: Icons.contacts_outlined,
                    title: "Emergency\nContacts",
                    onTap: () {},
                  ),
                  CustomListTile(
                    leadingIcon: Icons.info_outline_rounded,
                    title: "Zone Information",
                    onTap: () {},
                  ),
                  CustomListTile(
                    leadingIcon: Icons.analytics_outlined,
                    title: "Statistics",
                    onTap: () {},
                  )
                ],
              )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 69, 76, 255),
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.logout_outlined, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Logout",
                          style: buttonStyle.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.help_outline_rounded, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Help",
                          style: buttonStyle.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
