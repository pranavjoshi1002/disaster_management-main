import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MyDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    getDrawerState();
    print(drawerSate.value);

    update();
  }

  var drawerSate = DrawerState.closed.obs;
  void getDrawerState() {
    drawerSate.value = zoomDrawerController.stateNotifier!.value;
  }
}
