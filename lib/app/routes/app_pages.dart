import 'package:get/get.dart';

import '../modules/courses/bindings/courses_binding.dart';
import '../modules/courses/views/courses_view.dart';
import '../modules/courses_detail/bindings/courses_detail_binding.dart';
import '../modules/courses_detail/views/courses_detail_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intoduction/bindings/intoduction_binding.dart';
import '../modules/intoduction/views/intoduction_view.dart';
import '../modules/lessons/bindings/lessons_binding.dart';
import '../modules/lessons/views/lessons_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/regist/bindings/regist_binding.dart';
import '../modules/regist/views/regist_view.dart';
import '../modules/reset_pass/bindings/reset_pass_binding.dart';
import '../modules/reset_pass/views/reset_pass_view.dart';
import '../modules/result/bindings/result_binding.dart';
import '../modules/result/views/result_view.dart';
import '../modules/search_view/bindings/search_view_binding.dart';
import '../modules/search_view/views/search_view_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/your_courses/bindings/your_courses_binding.dart';
import '../modules/your_courses/views/your_courses_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        children: [
          GetPage(
            name: _Paths.HOME,
            page: () => HomeView(),
            binding: HomeBinding(),
          ),
        ]),
    GetPage(
      name: _Paths.INTODUCTION,
      page: () => const IntoductionView(),
      binding: IntoductionBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_VIEW,
      page: () => const SearchViewView(),
      binding: SearchViewBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.COURSES,
      page: () => const CoursesView(),
      binding: CoursesBinding(),
    ),
    GetPage(
      name: _Paths.YOUR_COURSES,
      page: () => const YourCoursesView(),
      binding: YourCoursesBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGIST,
      page: () => RegistView(),
      binding: RegistBinding(),
    ),
    GetPage(
      name: _Paths.COURSES_DETAIL,
      page: () => const CoursesDetailView(),
      binding: CoursesDetailBinding(),
    ),
    GetPage(
      name: _Paths.LESSONS,
      page: () => const LessonsView(),
      binding: LessonsBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASS,
      page: () => ResetPassView(),
      binding: ResetPassBinding(),
    ),
    GetPage(
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
  ];
}
