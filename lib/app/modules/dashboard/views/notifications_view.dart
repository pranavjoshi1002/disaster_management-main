import 'package:flutter/material.dart';

import 'package:get/get.dart';

class NotificationsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Notifications View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
