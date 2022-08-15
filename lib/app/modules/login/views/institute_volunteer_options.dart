import 'package:disaster_management/app/modules/login/constants/fonts.dart';
import 'package:disaster_management/app/modules/login/controllers/login_controller.dart';
import 'package:disaster_management/app/modules/login/helpers/login_user_type.dart';
import 'package:disaster_management/app/modules/login/widgets/customButton.dart';
import 'package:disaster_management/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
class InstituteVolunteerOptions extends StatelessWidget {
  const InstituteVolunteerOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: double.maxFinite,
          color: Color(0xff373FFF),
        ),
        Container(
          height: height * 0.6,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(44))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.18,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      primary: Color(0xFF373FFF),
                      minimumSize: Size(width * 0.7, 46)),
                  onPressed: () {
                   
                  },
                  child: Text("Add Volunteer", style: buttonStyle)),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      primary: Color(0xFF373FFF),
                      minimumSize: Size(width * 0.7, 46)),
                  onPressed: () {
                    
                  },
                  child: Text("Edit Volunteer", style: buttonStyle)),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      primary: Color(0xFF373FFF),
                      minimumSize: Size(width * 0.7, 46)),
                  onPressed: () {
                    
                  },
                  child: Text(
                    "Remove Volunteer",
                    style: buttonStyle,
                  )),
                  SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      primary: Color(0xFF373FFF),
                      minimumSize: Size(width * 0.7, 46)),
                  onPressed: () {
                    
                  },
                  child: Text(
                    "History",
                    style: buttonStyle,
                  )),
            ],
          ),
        ),
        Positioned(
            top: height * 0.27,
            height: 200,
            width: 200,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.07999999821186066),
                      offset: Offset(4, 4),
                      blurRadius: 24)
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(Radius.elliptical(186, 186)),
              ),
              child: Icon(
                Icons.person,
                size: 125,
                color: Color(0XFF373FFF),
              ),
            )),
      ]),
    );
  }
}
