import 'package:get/get.dart';

class HomeViewController extends GetxController {
  //setting initial value of current page
  RxInt _currentPageIndex = 0.obs;
  

  //getting current page index
  int get currentPageIndex => _currentPageIndex.value;

  //setting current page index
  void changeBottomNavagationBarIndex(int index) {
    _currentPageIndex.value = index;
    
  }
}
