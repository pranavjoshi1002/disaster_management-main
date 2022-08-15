import 'package:disaster_management/app/modules/login/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData? leadingIcon;
  final String? title;
  final VoidCallback? onTap;
  CustomListTile({this.leadingIcon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: onTap,
      splashColor: Colors.grey.shade200,
      child: Ink(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 69, 76, 255),
            borderRadius: BorderRadius.circular(15)),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Icon(
                leadingIcon,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title ?? "No title",
                style: buttonStyle.copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
