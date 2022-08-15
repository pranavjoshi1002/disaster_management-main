import 'package:disaster_management/app/modules/login/widgets/customButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/dashboard_controller.dart';

class EmergencyView extends GetView<DashboardController> {
  const EmergencyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff373FFF),
      body: Column(
        children: [
          SizedBox(
            height: hei * 0.12,
            width: wid,
            child: Center(
                child: Text("Emergency Alert",
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
            child: Center(
              child: InkWell(
                onTap: () {},
                child: CustomButton(
                  
                  height: wid * 0.6,
                  onTap: () {},
                  width: wid * 0.6,
                  child: Container(
                    
                    height: wid * 0.6,
                    width: wid * 0.6,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular((wid * 0.6) / 2)),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.bell,
                        size: (wid * 0.6) / 2.5,
                        color: Colors.black,
                        
                      ),
                      
                    ),
                  ),
                  
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
