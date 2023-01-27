import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:courses/app/controllers/auth_controller.dart';
import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

final authC = Get.find<AuthController>();

class HomeView extends GetView<HomeController> {
  // const HomeView({Key? key}) : super(key: key);

  var name = authC.auth.currentUser!.displayName;
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "$name",
                          style: TextStyle(fontSize: 18),
                        ),
                        // StreamBuilder<QuerySnapshot<Object?>>(
                        //   stream: controller.streamDataUser(),
                        //   builder: (context, snapshot) {
                        //     if (snapshot.connectionState ==
                        //         ConnectionState.active) {
                        //       var data = snapshot.data!.docs;
                        //       return ListView.builder(
                        //           scrollDirection: Axis.vertical,
                        //           itemCount: data.length,
                        //           itemBuilder: (context, index) => ListTile(
                        //                   title: Text(
                        //                 "${(data[index] as Map<String, dynamic>)["name"]}",
                        //                 style: TextStyle(
                        //                     fontSize: 36,
                        //                     fontWeight: FontWeight.bold),
                        //               )));
                        //     }
                        //     return Center(
                        //       child: CircularProgressIndicator(),
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Icon.png")),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "Search Courses",
                        suffixIcon: InkWell(
                            onTap: () {
                              Get.toNamed(Routes.SEARCH_VIEW);
                            },
                            borderRadius: BorderRadius.circular(50),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                            )),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: [
                      Text(
                        "Category:",
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("   #data   ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                          )),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("   #data   ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                          )),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("   #css   ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                          )),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("   #ui   ",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                          )),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot<Object?>>(
                  stream: controller.streamData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.active) {
                      var listAllDocs = snapshot.data!.docs;
                      return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: listAllDocs.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.COURSES,
                                    arguments: listAllDocs[index].id);
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
                                                "${(listAllDocs[index].data() as Map<String, dynamic>)["durasi"]}",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color.fromARGB(
                                                        255, 50, 112, 163)),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                  "${(listAllDocs[index].data() as Map<String, dynamic>)["nama"]}",
                                                  style: TextStyle(
                                                      fontSize: 26,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "${(listAllDocs[index].data() as Map<String, dynamic>)["desk"]}",
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
                          });
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
