import 'package:flutter/cupertino.dart';

class SingleSidedCurveBox extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final Widget child;

  SingleSidedCurveBox(
      {this.width, this.height, this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      height: height ?? double.maxFinite,
      decoration: BoxDecoration(
       
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(72),
          bottomRight: Radius.circular(0),
        ),
        color: Color.fromRGBO(118, 123, 255, 0.07000000029802322),
      ),
      child: child,
    );
  }
}
