import 'dart:developer';

import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:disaster_management/app/modules/login/widgets/customTextFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../login/widgets/custom_box.dart';

class AlertForm extends StatelessWidget {
  AlertForm({Key? key}) : super(key: key);
  TextEditingController _vol = TextEditingController();
  static String value = "Zones";

  var _todisaster = [
    'Floods',
    'Wildfires',
    'Droughts',
    'Cyclones',
    'Earthquakes',
    'Landslides',
    'Other'
  ];

  static String value_type_disaster = "Types Of Disasters";

  var _zones = ['Red', 'Orange', 'Green'];
  TextEditingController state = TextEditingController();
  TextEditingController district = TextEditingController();
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    String? dropdownvalue;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(children: [
        SizedBox(
          height: hei * 0.1303,
          width: wid,
          child: Center(
              child: Text("Alert Form",
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
                  topLeft: Radius.circular(32), topRight: Radius.circular(32))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              width: wid * 0.84,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SelectState(
                  onCountryChanged: (value) {},
                  onStateChanged: (value) {},
                  onCityChanged: (value) {}),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
                child: CustomRoundedBox(
              width: wid * 0.84,
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(border: InputBorder.none),

                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  hint: Text("Type Of Disaster"),
                  // Array list of items
                  items: _todisaster.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? value) {}),
            )),
            SizedBox(
              height: hei * 0.05,
            ),
            Center(
                child: CustomRoundedBox(
              width: wid * 0.84,
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(border: InputBorder.none),

                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),
                  hint: Text("Select Zone"),
                  // Array list of items
                  items: _zones.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? value) {}),
            )),
            SizedBox(
              height: hei * 0.05,
            ),
            Center(
              child: CustomTextFormField(
                textController: _vol,
                width: wid * 0.84,
                height: 50,
                hintText: "Number of volunteers required",
              ),
            ),
            SizedBox(
              height: hei * 0.05,
            ),
            Center(
              child: ElevatedButton(
                child: Text('Create Group & Send Alert'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
