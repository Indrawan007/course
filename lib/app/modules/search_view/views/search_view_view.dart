import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_view_controller.dart';

class SearchViewView extends GetView<SearchViewController> {
  const SearchViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
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
                          borderRadius: BorderRadius.circular(50),
                          onTap: () {},
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          )),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "1 Results",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 30,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.COURSES);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                )),
                            child: Column(
                              children: [
                                Image(image: AssetImage("assets/images/1.png")),
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
                                          "3 h 45 Min",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 50, 112, 163)),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text("HTML",
                                            style: TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Hypertext Markup Language",
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
        ),
      ),
    );
  }
}
