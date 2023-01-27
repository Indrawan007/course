import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 1;

  void change(int Index) {
    tabIndex = Index;
    update();
  }
}
