import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CoursesController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Object?>> streamData(String docID) {
    DocumentReference docRef = firestore.collection("Courses").doc(docID);

    // void add(String) {
    //   DocumentReference data = firestore.collection("Courses").doc(docID).get();
    // }

    // firestore.collection("Courses").doc(docID).get().then((documentSnapshot) {
    //   firestore.collection("courses").doc("new_id").set({"nama": nama,
    //   "desk": desk ,
    //   "deskripsi": deskripsi,
    //   "durasi": durasi,
    //   "status": status,
    //   "id": id,
    //   "image": image,
    //   });
    // });

    return docRef.snapshots();
  }
}
