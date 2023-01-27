import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Object?>> setting(String docID) {
    DocumentReference docRef = firestore.collection("User").doc(docID);

    return docRef.snapshots();
  }
}
