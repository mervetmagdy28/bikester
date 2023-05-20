import 'dart:developer';

import 'package:bikesterr/data/models/station_model.dart';
import 'package:bikesterr/presentation/screens/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../presentation/screens/login.dart';

class StationsController extends GetxController {
  var allStations = [].obs;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  bool dataIsReady = false;

  getStations() async {
    log("get stations started");

    final CollectionReference myCollection = _firestore.collection('stations');

    QuerySnapshot snapshot = await myCollection.get();
    var stationsList = snapshot.docs;

    log('${snapshot.docs.length}');

    for (var documentSnapshot in stationsList) {
      // Access each document here
      var map = documentSnapshot.data() as Map<String, dynamic>;
      var stationModel = StationModel.fromJson(map);
      allStations.value.add(stationModel);
    }

    log('stations: ${allStations.length}');
  }
}
