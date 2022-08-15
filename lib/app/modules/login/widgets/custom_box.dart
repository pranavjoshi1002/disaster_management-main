import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomRoundedBox extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  const CustomRoundedBox(
      {Key? key, this.width, this.height,this.padding, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 0,
      height: height ?? 0,
      padding: padding??EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(13, 0, 0, 0),
              offset: Offset(4, 4),
              blurRadius: 20)
        ],
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: child,
    );
  }
}
