import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../data/models/station_model.dart';
import '../../../domain/controllers/polyline_response.dart';
import '../../../domain/controllers/stations_controller.dart';

class NearestStation extends StatefulWidget {
  const NearestStation({super.key});

  @override
  State<NearestStation> createState() => _NearestStationState();
}

class _NearestStationState extends State<NearestStation> {
  CameraPosition initialCameraPosition =
      const CameraPosition(target: LatLng(30.0444, 31.2357), zoom: 14);
  Set<Marker> markers = {};
  PolylineResponse polylineResponse = PolylineResponse();
  String kApiGoogle = 'AIzaSyAZTVndYd4dtsbBVNDbkWRMBdoR7pxztS8';
  GoogleMapController? googleMapController;
  var stationController = Get.put(StationsController());
  late Position position;
  Set<Polyline> polylinePoints = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        polylines: polylinePoints,
        initialCameraPosition: initialCameraPosition,
        markers: markers,
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              getNearestStation();
            });
          },
          label: const Text("nearest station")),
    );
  }

  void getNearestStation() async {
    var stationList = stationController.allStations.value;
    await getPosition();

    StationModel nearestStation = stationList[0];
    double shortestDistance = double.infinity;

    for (StationModel station in stationList) {
      double distance = Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        double.parse(station.lat!),
        double.parse(station.long!),
      );

      if (distance < shortestDistance && station.availableBikes != null) {
        shortestDistance = distance;
        nearestStation = station;
      }
    }

    markers.add(Marker(
      markerId: const MarkerId('1'),
      position: LatLng(double.parse(nearestStation.lat!),
          double.parse(nearestStation.long!)),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    ));
    drawPolyLine();
    setState(() {});
  }

  Future<void> getPosition() async {
    markers.clear();
    position = await _determinePosition();
    googleMapController?.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(position.latitude, position.longitude), zoom: 10)));
    markers.add(Marker(
      markerId: const MarkerId('currentLocation'),
      position: LatLng(position.latitude, position.longitude),
    ));

    setState(() {});
  }

  Future<Position> _determinePosition() async {
    bool serviceEnable;
    LocationPermission locationPermission;

    serviceEnable = await Geolocator.isLocationServiceEnabled();

    try {
      serviceEnable;
    } catch (e) {}

    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();

      if (locationPermission == LocationPermission.denied) {
        return Future.error('Location Permission denied');
      }
    }

    if (locationPermission == LocationPermission.deniedForever) {
      return Future.error('Location Permission are permanently denied');
    }

    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  void drawPolyLine() async {
    var response = await http.post(Uri.parse(
        'https://maps.googleapis.com/maps/api/directions/json?key=$kApiGoogle&units=metric&origin=${markers.elementAt(0).position.latitude.toString()},${markers.elementAt(0).position.longitude.toString()}&destination=${markers.elementAt(1).position.latitude.toString()},${markers.elementAt(1).position.longitude.toString()}&mode=driving'));

    polylineResponse = PolylineResponse.fromJson(jsonDecode(response.body));

    for (int i = 0;
        i < polylineResponse.routes![0].legs![0].steps!.length;
        i++) {
      polylinePoints.add(Polyline(
          polylineId: PolylineId(
              polylineResponse.routes![0].legs![0].steps![i].polyline!.points!),
          points: [
            LatLng(
                polylineResponse
                    .routes![0].legs![0].steps![i].startLocation!.lat!,
                polylineResponse
                    .routes![0].legs![0].steps![i].startLocation!.lng!),
            LatLng(
                polylineResponse
                    .routes![0].legs![0].steps![i].endLocation!.lat!,
                polylineResponse
                    .routes![0].legs![0].steps![i].endLocation!.lng!),
          ],
          width: 3,
          color: Colors.red));
    }

    setState(() {});
  }
}
