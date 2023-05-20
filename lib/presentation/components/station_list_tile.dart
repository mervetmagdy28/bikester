import 'package:bikesterr/data/models/station_model.dart';
import 'package:bikesterr/presentation/screens/home_page.dart';
import 'package:bikesterr/presentation/screens/picked_station.dart';
import 'package:bikesterr/presentation/screens/wallet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StationListTile extends StatelessWidget {
  final StationModel stationModel;

  const StationListTile({super.key, required this.stationModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue[200],
          ),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.ev_station, color: Colors.black),
                title: Text(
                  " ${stationModel.stationName}",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle:
                    Text("Bikes Available: ${stationModel.availableBikes}"),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                  size: 40,
                ),
                onTap: () {
                  Get.to(() => PickedStation());
                },
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
                dense: true,
                enabled: true,
                //selected: true,
                //selectedColor: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
