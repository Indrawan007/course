import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:courses/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  late TextEditingController namaC;
  late TextEditingController emailC;
  late TextEditingController passC;

  Stream<User?> get streamAuthStatus => auth.authStateChanges();

  void resetPass(String email) async {
    if (email != "" && GetUtils.isEmail(email)) {
      try {
        auth.sendPasswordResetEmail(email: email);
        Get.defaultDialog(
            title: "Berhasil",
            middleText:
                "Kami terlah mengirimkan reset password ke email $email",
            onConfirm: () {
              Get.back();
              Get.back();
            },
            textConfirm: "Ya, saya mengerti.");
      } catch (e) {
        Get.defaultDialog(
            title: "Terjadi kesalahan",
            middleText: "Tidak dapat mengirimkan reset password");
      }
    } else
      () {
        Get.defaultDialog(
            title: "Terjadi kesalahan", middleText: "Email tidak valid");
      };
  }

  void login(String email, String password) async {
    CollectionReference account = firestore.collection("User");
    var isValid = false;
    Stream<QuerySnapshot<Object?>> data = account.snapshots();

    try {
      // StreamBuilder(
      //   stream: data,
      //   builder: (context, snapshot) {
      //     var listuser = snapshot.data!.docs;
      //     print("$data");
      //     for (var user in listuser) {
      //       if (user["email"] == email && user["pass"] == password) {
      //         isValid = true;
      //         break;
      //       }
      //     }
      //     if (isValid) {
      //       Get.offAllNamed(Routes.DASHBOARD);
      //     }
      //     return Text("");
      //   },
      // );

      final UserCredential myUser = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      final user = FirebaseAuth.instance.currentUser;
      await user?.updatePhotoURL("https://example.com/jane-q-user/profile.jpg");

      if (user != null) {
        // Name, email address, and profile photo URL
        final name = user.displayName;
        final email = user.email;
        final photoUrl = user.photoURL;

        // Check if user's email is verified
        final emailVerified = user.emailVerified;

        // The user's ID, unique to the Firebase project. Do NOT use this value to
        // authenticate with your backend server, if you have one. Use
        // User.getIdToken() instead.
        final uid = user.uid;
      }
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user != null) {
          print(user.uid);
        }
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "No user found for that email.",
        );
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "Wrong password provided for that user.",
        );
      }
    } catch (e) {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Tidak dapat login dengan akun ini.",
      );
    }
  }

  void signup(String name, String email, String password) async {
    final user = FirebaseAuth.instance.currentUser;
    await user?.updateDisplayName("$name");
    if (user != null) {
      // Name, email address, and profile photo URL
      final name = user.displayName;
      final email = user.email;
      final photoUrl = user.photoURL;

      // Check if user's email is verified
      final emailVerified = user.emailVerified;

      // The user's ID, unique to the Firebase project. Do NOT use this value to
      // authenticate with your backend server, if you have one. Use
      // User.getIdToken() instead.
      final uid = user.uid;
    }
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        print(user.uid);
      }
    });

    CollectionReference account = firestore.collection("User");

    print("$account");

    account.add({"name": name, "email": email, "pass": password});

    @override
    void onInit() {
      namaC = TextEditingController();
      emailC = TextEditingController();
      passC = TextEditingController();
      super.onInit();
    }

    @override
    void onClose() {
      namaC.dispose();
      emailC.dispose();
      passC.dispose();
      super.onClose();
    }

    try {
      UserCredential myUser = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await myUser.user!.sendEmailVerification();
      Get.defaultDialog(
          title: "Verification Email",
          middleText: "Kami telah mengirimkan email verifikasi ke $email.",
          onConfirm: () {
            Get.back();
            Get.back();
          },
          textConfirm: "Ya, Saya akan melakukan verifikasi");

      Get.offAllNamed(Routes.DASHBOARD, arguments: account.id);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "The password provided is too weak.",
        );
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.defaultDialog(
          title: "Terjadi Kesalahan",
          middleText: "The account already exists for that email.",
        );
      }
    } catch (e) {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Tidak dapat mendaftar.",
      );
    }
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Get.toNamed(Routes.LOGIN);
  }
}
