import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/courses_detail_controller.dart';

class CoursesDetailView extends GetView<CoursesDetailController> {
  const CoursesDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'HTML',
            style: TextStyle(color: Colors.black),
          ),
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: AssetImage("assets/images/1.png")),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "HTML",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Advanced web applications"),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(child: ListView.builder(itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.LESSONS);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(color: Colors.grey, width: 1)),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text("${index + 1}")),
                            ),
                            Text("Tag ${index + 1}"),
                            Text("100%")
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              })))
            ],
          ),
        ));
  }
}
