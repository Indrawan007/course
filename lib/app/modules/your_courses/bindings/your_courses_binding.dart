import 'package:get/get.dart';

import '../controllers/your_courses_controller.dart';

class YourCoursesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourCoursesController>(
      () => YourCoursesController(),
    );
  }
}
