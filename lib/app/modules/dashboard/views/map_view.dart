import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

List<StaggeredTile> _cardTile = <StaggeredTile>[
  StaggeredTile.count(4, 1.25),
  StaggeredTile.count(4, 1.25),
  StaggeredTile.count(4, 1.25),
  StaggeredTile.count(4, 1.25),
];

//List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  BackGroundTile(
      backgroundColor: Colors.white, icondata: Icons.network_cell_outlined, Str: 'Online Map',),
  BackGroundTile(
      backgroundColor: Colors.white,
      icondata: Icons.signal_cellular_connected_no_internet_0_bar, Str: 'Offline Map',),
  BackGroundTile(backgroundColor: Colors.white, icondata: Icons.warning, Str: 'Area Danger Level Map',),
  BackGroundTile(backgroundColor: Colors.white, icondata: Icons.route, Str: 'Route',),
];

class MapView extends GetView {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff373FFF),
      body: Column(children: [
        SizedBox(
          height: hei * 0.12,
          width: wid,
          child: Center(
              child: Text("Disaster Prevention Map",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500))),
        ),
        Container(
            height: hei * 0.8,
            width: wid,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32))),
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _cardTile,
              children: _listTile,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
            ))
      ]),
    );
  }
}

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final IconData icondata;
  final String Str;

  const BackGroundTile({required this.backgroundColor, required this.icondata, required this.Str});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: backgroundColor,
        onPressed: () {},
        child: Card(
          color: backgroundColor,
          // ignore: prefer_const_constructors
          child: Center(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    icondata,
                    color: Colors.black,
                    size: 40,
                  ),
                  title: Text(Str),
                )
              ],
            ),
          ),
        )
      );
  }
}
