import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // late String _password;
  // String get password => _password;
  // set password(String pass) {
  //   _password = pass;
  //   update();
  // }

  // bool _showPassword = false;
  // bool get showPassword => _showPassword;
  // void toggleShowPassword() {
  //   _showPassword = !_showPassword;
  //   print("$_showPassword");
  //   update();
  // }
  RxBool isPass = false.obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> getData() {
    CollectionReference User = firestore.collection("User");

    return User.snapshots();
  }
}
