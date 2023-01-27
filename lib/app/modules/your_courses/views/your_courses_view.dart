import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/your_courses_controller.dart';

class YourCoursesView extends GetView<YourCoursesController> {
  const YourCoursesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your Courses',
            style: TextStyle(color: Colors.black),
          ),
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: StreamBuilder<QuerySnapshot<Object?>>(
          stream: controller.streamData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              var data = snapshot.data!.docs;
              return Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Column(
                  children: [
                    Expanded( 
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.COURSES_DETAIL);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      )),
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              "assets/images/1.png")),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${(data[index].data() as Map<String, dynamic>)["durasi"]}",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 50, 112, 163)),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                  "${(data[index].data() as Map<String, dynamic>)["nama"]}",
                                                  style: TextStyle(
                                                      fontSize: 26,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "${(data[index].data() as Map<String, dynamic>)["desk"]}",
                                              ),
                                              SizedBox(
                                                height: 16,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
