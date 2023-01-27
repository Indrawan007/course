import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/courses_controller.dart';

class CoursesView extends GetView<CoursesController> {
  const CoursesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          StreamBuilder<DocumentSnapshot<Object?>>(
            stream: controller.streamData(Get.arguments),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                var data = snapshot.data!.data() as Map<String, dynamic>;
                return Expanded(
                    child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: data.length.sign,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        AppBar(
                          title: Text(
                            '${data["nama"]}',
                            style: TextStyle(color: Colors.black),
                          ),
                          shadowColor: Colors.white,
                          backgroundColor: Colors.white,
                          centerTitle: true,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Image(image: AssetImage("assets/images/1.png")),
                        SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 24,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Colors.blue),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "   ${(data["status"])}   ",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  "About the Courses",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "${(data["deskripsi"])}",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Text(
                                  "Duration",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("${(data["durasi"])}"),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 33, vertical: 16),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.YOUR_COURSES,
                                      arguments: data[index]);
                                },
                                child: Container(
                                  height: 56,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Add Course",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.amber[800],
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.grey, width: 1)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ));
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ],
      ),
    ));
  }
}
