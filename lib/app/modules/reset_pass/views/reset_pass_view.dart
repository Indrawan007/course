import 'package:courses/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reset_pass_controller.dart';

class ResetPassView extends GetView<ResetPassController> {
  final authC = Get.find<AuthController>();
  final emailC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Column(
                  children: [
                    Image(image: AssetImage("assets/images/1.png")),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Reset Password",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: emailC,
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
                    GestureDetector(
                      onTap: () => authC.resetPass(emailC.text),
                      child: Container(
                        height: 56,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Reset Password",
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
                          Get.back();
                        },
                        child: Text("Log In"))
                  ],
                ))));
  }
}
