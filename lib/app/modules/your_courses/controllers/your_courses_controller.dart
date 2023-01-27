import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class YourCoursesController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference Courses = firestore.collection("courses");

    return Courses.snapshots();
  }
}
