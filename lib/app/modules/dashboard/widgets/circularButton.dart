import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
    required this.child,
    this.color,
    this.onTap,
    this.width = 10,
  }) : super(key: key);

  final Widget child;
  final Color? color;
  final double width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
        shape: const CircleBorder(),
        color: Color(0xff373FFF),
        clipBehavior: Clip.hardEdge,
        type: MaterialType.transparency,
        child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: child,
            ))

        //   RawMaterialButton(
        //    padding: const EdgeInsets.all(4),
        //   elevation: 0.0,
        //   child: child,
        //   onPressed: onTap,
        //   constraints: BoxConstraints.tightFor(
        //     width: width,
        //     height: width,
        //   ),
        //   shape: const CircleBorder(),
        //   //fillColor: Color(0xFF4C4F5E),
        // ),
        );
  }
}
