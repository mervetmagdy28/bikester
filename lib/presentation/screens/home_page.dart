import 'package:bikesterr/domain/controllers/stations_controller.dart';
import 'package:bikesterr/presentation/components/appbar.dart';
import 'package:bikesterr/presentation/components/drawer.dart';
import 'package:flutter/material.dart';

import 'home_screens/all_stations.dart';
import 'home_screens/nearest_stations.dart';
import 'home_screens/profile.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var screens = [ NearestStation(), AllStations(), Profile()];
  int index = 0;

  var stationController = Get.put(StationsController());
  @override
  void initState() {
    // TODO: implement initState

    stationController.getStations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.map), label: 'nearest station'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ev_station_sharp), label: 'all stations'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
      body: screens[index],
    );
  }
}
