import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Future<QuerySnapshot<Object?>> getData() async {
  //   CollectionReference Courses = firestore.collection("Courses");

  //   return Courses.get();
  // }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference Courses = firestore.collection("Courses");

    return Courses.snapshots();
  }

  Stream<QuerySnapshot<Object?>> streamDataUser() {
    CollectionReference docRef = firestore.collection("User");

    return docRef.snapshots();
  }
}
