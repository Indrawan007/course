import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
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
                              height: 200,
                              width: 340,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              height: 80,
                              width: 340,
                              child: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/Bell.png")),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.blue),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Notifications",
                                                style: TextStyle(fontSize: 25),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.navigate_next)
                                    ],
                                  ),
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
                            SizedBox(
                              height: 16,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Account Information",
                                style: TextStyle(fontSize: 25),
                                textAlign: TextAlign.start,
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
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/Path.png")),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.blue),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Name",
                                                style: TextStyle(fontSize: 25),
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "Name",
                                                style: TextStyle(fontSize: 15),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.navigate_next)
                                    ],
                                  ),
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
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/Shape.png")),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.blue),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Email",
                                                style: TextStyle(fontSize: 25),
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "Example@gmail.com",
                                                style: TextStyle(fontSize: 15),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.navigate_next)
                                    ],
                                  ),
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
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/images/Vector.png")),
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.blue),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Password",
                                                style: TextStyle(fontSize: 25),
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "Change 2 weeks ago",
                                                style: TextStyle(fontSize: 15),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.navigate_next)
                                    ],
                                  ),
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
