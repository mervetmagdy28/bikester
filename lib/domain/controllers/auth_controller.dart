import 'package:bikesterr/domain/controllers/user_data_controller.dart';
import 'package:bikesterr/presentation/screens/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../presentation/screens/login.dart';

class AuthController extends RxController {
  // data , fields
  // final FirebaseAuthentication _firebaseAuthentication =
  //     FirebaseAuthentication();
  final auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final _recaptchaVerifier = RecaptchaVerifier(
//   container: 'recaptcha',
//   size: RecaptchaVerifierSize.compact,
//   theme: RecaptchaVerifierTheme.light, auth: auth,
// );
  // functirons
  login({required String email, required String password}) async {
    var userCred =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    var userDataController = Get.put(UserDataController());
    if (userCred != null) {
      Get.showSnackbar(const GetSnackBar(
        title: 'successful',
        messageText: Text('logging in'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
      ));
      userDataController.userID = userCred.user!.uid;
      userDataController.fetchData();
      Get.to(() => HomePage());
    } else {
      Get.showSnackbar(const GetSnackBar(
        title: 'error',
        messageText: Text('email or password are invalid'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ));
    }
  }

  Future signUp({
    required String email,
    required String password,
  }) async {
    var userCred = await auth.createUserWithEmailAndPassword(
        email: email, password: password);

    if (userCred != null) {
      Get.showSnackbar(const GetSnackBar(
        title: 'successful',
        messageText: Text('new user created'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 3),
      ));
      return userCred.user!.uid;
    } else {
      Get.showSnackbar(const GetSnackBar(
        title: 'error',
        messageText: Text('email or password are invalid'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
      ));
      throw Exception();
    }
  }

  logOut() {
    FirebaseAuth.instance.signOut();
  }

  addUser({
    required String userName,
    required String dateOfBirth,
    required String phoneNumber,
    String emergencyNumber = "NA",
    required String bloodGroup,
    required String userID,
    required String email,
  }) async {
    await _firestore.collection("users").doc(userID).set({
      "bloodGroup": bloodGroup,
      "dateofBirth": dateOfBirth,
      "emergencyNumber": emergencyNumber,
      "phoneNumber": phoneNumber,
      "userName": userName,
      "email": email,
    });
  }
}
