import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lessons_controller.dart';

class LessonsView extends GetView<LessonsController> {
  const LessonsView({Key? key}) : super(key: key);
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
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Center(
                child: Column(children: [
                  Text("Tag For Headers",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 8,
                  ),
                  Text("3 of 11 lessons"),
                  SizedBox(
                    height: 8,
                  ),
                ]),
              ),
              TabBar(tabs: [
                Tab(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Text(
                      "Lessons",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Text(
                      "Quiz",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Text(
                      "Discuss",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Image(image: AssetImage("assets/images/1.png")),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Introduction"),
                    SizedBox(
                      height: 8,
                    ),
                    Text("jgjkgkjgkfkkkjgjfjf")
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: AssetImage("assets/images/1.png")),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Quiz 1"),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("data"),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("data"),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 56,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Begin",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: Colors.orange, width: 1)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ))
                  ],
                ),
                Center(
                  child: Text("data3"),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
