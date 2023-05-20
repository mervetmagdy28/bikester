class StationModel {
  String? stationName;
  String? address;
  String? lat;
  String? long;
  String? availableBikes;

  StationModel({
    required this.stationName,
    required this.address,
    required this.lat,
    required this.long,
    required this.availableBikes,
  });

  StationModel.fromJson(Map stationMap) {
    address = stationMap["address"];
    lat = stationMap["lat"];
    long = stationMap["long"];
    availableBikes = stationMap["availableBikes"].toString();
    stationName = stationMap["stationName"];
  }
}
