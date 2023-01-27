import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Courses Apps",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Mari belajar bersama kami",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 350,
              width: 350,
              child: Lottie.asset("assets/lotties/learn.json"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.HOME),
            child: Text("GET STARTED"),
            style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
          ),
        ],
      ),
    );
  }
}
