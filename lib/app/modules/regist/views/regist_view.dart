import 'package:courses/app/controllers/auth_controller.dart';
import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/regist_controller.dart';

bool pass = true;
final namaC = TextEditingController();
final emailC = TextEditingController();
final passC = TextEditingController();

final authC = Get.find<AuthController>();

class RegistView extends GetView<RegistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Expanded(
            child: ListView.builder(
              itemCount: 1,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Image(image: AssetImage("assets/images/1.png")),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Create Your Account"),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: namaC,
                      // controller: controller.nameC,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: false,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "Name",
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: emailC,
                      // controller: controller.emailC,
                      autocorrect: false,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: false,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "Email",
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: passC,
                      // controller: controller.passC,
                      autocorrect: false,
                      textInputAction: TextInputAction.done,
                      obscureText: pass,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: false,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "Password",
                        suffixIcon: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            child: Obx(
                              () => IconButton(
                                onPressed: () {
                                  controller.isPass.isFalse ? !pass : pass;
                                  controller.isPass.toggle();
                                  print("its me $pass");
                                },
                                icon: Icon(
                                  controller.isPass.isTrue
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () =>
                          authC.signup(namaC.text, emailC.text, passC.text),
                      child: Container(
                        height: 56,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.amber[800],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey, width: 1)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Text("Log In"))
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
