import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final VoidCallback onTap;
  

  CustomButton({
    required this.onTap,
    required this.width,
    required this.height,
    required this.child,
   
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(25),
        splashColor: Colors.grey.shade100,
        child: Ink(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: Color.fromRGBO(54, 63, 255, 1),
          ),
          child: Center(child: child),
        ));
  }
}
