import 'package:courses/app/controllers/auth_controller.dart';
import 'package:courses/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

final emailC = TextEditingController();
final passC = TextEditingController();

final authC = Get.find<AuthController>();

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();
  var loginController = Get.put(LoginController());
  RxBool isPass = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              children: [
                Image(image: AssetImage("assets/images/1.png")),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Log In",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: emailC,
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
                  textInputAction: TextInputAction.done,
                  obscureText: isPass.isTrue,
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
                            isPass.isFalse ? isPass.isTrue : isPass;
                            isPass.toggle();
                            print("its me $isPass");
                          },
                          icon: Icon(
                            isPass.isTrue
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.RESET_PASS);
                    },
                    child: Text("Forgot Password?")),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () => authC.login(
                    emailC.text,
                    passC.text,
                  ),
                  child: Container(
                    height: 56,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Log In",
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
                      Get.toNamed(Routes.REGIST);
                    },
                    child: Text("Sign Up"))
              ],
            )),
      ),
    );
  }
}
