import 'package:courses/app/controllers/auth_controller.dart';
import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              height: 172,
                              width: 172,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  )),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.YOUR_COURSES);
                              },
                              child: Container(
                                height: 80,
                                width: 340,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Your Couerses",
                                    style: TextStyle(fontSize: 25),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 1,
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 80,
                              width: 340,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Saved",
                                  style: TextStyle(fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  )),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              height: 80,
                              width: 340,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Payment",
                                  style: TextStyle(fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () => authC.logout(),
                              child: Text(
                                "Log Out",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
