import 'package:bikesterr/data/models/station_model.dart';
import 'package:bikesterr/domain/controllers/stations_controller.dart';
import 'package:bikesterr/presentation/components/station_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class AllStations extends StatelessWidget {
  AllStations({super.key});

  // StationModel station = StationModel(
  //     address: "maaadi",
  //     lat: "30.12456",
  //     long: "29.31254",
  //     availableBikes: "6");

  var stationController = Get.put(StationsController());

  @override
  Widget build(BuildContext context) {
    var stationList = stationController.allStations.value;

    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return StationListTile(
              stationModel: stationController.allStations.value[index]);
        },
        itemCount: stationList.length,
      ),
    );
  }
}
