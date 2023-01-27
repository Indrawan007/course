import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:courses/app/modules/home/views/home_view.dart';
import 'package:courses/app/modules/profile/views/profile_view.dart';
import 'package:courses/app/modules/settings/views/settings_view.dart';
import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
                child: IndexedStack(
              index: controller.tabIndex,
              children: [ProfileView(), HomeView(), SettingsView()],
            )),
            bottomNavigationBar: ConvexAppBar(
              items: [
                TabItem(icon: Icons.person, title: 'Profile'),
                TabItem(icon: Icons.book, title: 'Courses'),
                TabItem(icon: Icons.settings, title: 'Setting')
              ],
              style: TabStyle.fixed,
              backgroundColor: Colors.white,
              cornerRadius: 10,
              color: Colors.grey,
              activeColor: Colors.amber[800],
              initialActiveIndex: 1,
              onTap: controller.change,
            ));
      },
    );
  }
}
