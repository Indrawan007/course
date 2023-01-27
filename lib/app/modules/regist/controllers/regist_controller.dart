import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegistController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  RxBool isPass = false.obs;
}
