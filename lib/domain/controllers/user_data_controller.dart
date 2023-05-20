import 'dart:developer';

import 'package:bikesterr/presentation/screens/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import '../../presentation/screens/login.dart';

class UserDataController extends GetxController {
  var userData = {}.obs;
  late String userID;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  bool dataIsReady = false;
  final box = GetStorage();
  fetchData() async {
    log("fetch user data started");
    DocumentReference docRef =
        FirebaseFirestore.instance.collection('users').doc(userID);

    DocumentSnapshot snapshot = await docRef.get();

// Extract the data from the snapshot
    userData.value = snapshot.data() as Map<String, dynamic>;
    //as Map<String, dynamic>;
    if (userData != null) {
      dataIsReady = true;
      log("user data restored successfully");
      log(userData.toString());
      box.write('username', userData.value["userName"]);
      box.write('email', userData.value["email"]);
      box.write('dateOfBirth', userData.value["dateofBirth"]);
      box.write('phoneNumber', userData.value["phoneNumber"]);
      box.write('emergencyNumber', userData.value["emergencyNumber"]);
      box.write('bloodGroup', userData.value["bloodGroup"]);
    }
  }
}
