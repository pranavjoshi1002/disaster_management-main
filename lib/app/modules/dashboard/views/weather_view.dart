import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherView extends GetView {
  @override
  Widget build(BuildContext context) {
   double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xff373FFF),
        body: Column(
          children: [
            SizedBox(
              height: hei * 0.12,
              width: wid,
              child: Center(
                  child: Text("Weather View",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500))),
            ),
            Container(
              height: hei * 0.8,
              width: wid,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: 
              Container(
              width: wid * 0.84,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SelectState(
                  onCountryChanged: (value) {},
                  onStateChanged: (value) {},
                  onCityChanged: (value) {}),
            ),
            )
    ]),
    );
  }
}
