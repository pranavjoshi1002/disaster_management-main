import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../controllers/dashboard_controller.dart';

List<StaggeredTile> _cardTile = <StaggeredTile>[
  StaggeredTile.count(4, 2),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 2),
];

//List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  BackGroundTile(backgroundColor: Colors.red, icondata: Icons.book, Str: "Disaster Prevention Booklet",),
  BackGroundTile(backgroundColor: Colors.orange, icondata: Icons.computer, Str: "News",),
  BackGroundTile(
      backgroundColor: Colors.pink, icondata: Icons.video_file_sharp, Str: "Videos",),
  BackGroundTile(backgroundColor: Colors.green, icondata: Icons.bar_chart, Str: "Statistics"),
  BackGroundTile(
      backgroundColor: Colors.deepPurpleAccent, icondata: Icons.contact_phone, Str: "Emergency Contacts",),
];

class AdminDashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xff373FFF),
        body: Column(
          children: [
            SizedBox(
              height: height * 0.12,
              width: width,
              child: Center(
                  child: Text("स्परण",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500))),
            ),
            Container(
                height: height * 0.8,
                width: width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: StaggeredGridView.count(
                  crossAxisCount: 4,
                  staggeredTiles: _cardTile,
                  children: _listTile,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                ))
          ],
        ));
  }
}
class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;
  final String Str;

  
  const BackGroundTile({required this.backgroundColor, required this.icondata, required this.Str});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topLeft: Radius.circular(20)),
            ),
          color: backgroundColor,
          
          onPressed: () {},
          child: Card(
            color: backgroundColor,
              child: Column(
                children: [
                  Center(
                    child: ListTile(
                      leading: Icon(
                        icondata,
                        color: Colors.black,
                        size: 40,
                      ),
                      title: Text(Str),
                    ),
                  )
                ],
              ),
            
          )),
    );
  }
}
