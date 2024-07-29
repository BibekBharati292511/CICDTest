import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'api/gps_tracker_api.dart';
import 'gps_tracker_screen.dart';
import 'model/gps_tracker_model.dart';

abstract class GpsTrackerState extends State<GpsTrackerScreen> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};
  bool loading = true;
  GpsTracker? gpsTracker;
  BitmapDescriptor? customIcon;

  List<LatLng> roadCoordinates = [];
  int currentIndex = 0;

  @override
  void initState() {

    super.initState();
    fetchData();
    Timer.periodic(Duration(seconds: 5), (timer) {
      fetchData();
    });
    BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(80, 80),devicePixelRatio: 5), 'assets/icons/marker.png')
        .then((onValue) {
      customIcon = onValue;

    });
  }


  void fetchData() async {
    try {
      int userId = 1;
      String imei = '043042672184';
      String username = 'demo';
      String password = 'Client@Nepal';

      gpsTracker = await fetchDeviceLocation(userId, imei, username, password);

      if (gpsTracker != null) {
        roadCoordinates = gpsTracker!.details.map((detail) {
          return LatLng(
            double.parse(detail.latitude!),
            double.parse(detail.longitude!),
          );
        }).toList();


        updateMarker();
      }

      setState(() {
        loading = false;
      });
    } catch (e) {
      setState(() {
        loading = false;
      });
      print('Failed to fetch data: $e');
    }
  }

  void updateMarker() {
    print("updationgggggggggggggggggggg");
    for(LatLng coordinates in roadCoordinates){
      print(coordinates);
    }
    if (roadCoordinates.isEmpty) return;

    final currentLocation = roadCoordinates[currentIndex];

    final newMarker = Marker(
      markerId: MarkerId('currentLocation'),
      position: currentLocation,
      icon: customIcon??BitmapDescriptor.defaultMarker,
      infoWindow: InfoWindow(
        title: 'Vehicle Location',
        snippet: 'Latitude: ${currentLocation.latitude}, Longitude: ${currentLocation.longitude}',
      ),
    );

    setState(() {
      markers = {newMarker};
    });

    mapController?.animateCamera(
      CameraUpdate.newLatLng(currentLocation),
    );

    currentIndex = (currentIndex + 1) % roadCoordinates.length;
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  CameraPosition get initialCameraPosition {
    return CameraPosition(
      target: roadCoordinates.isNotEmpty ? roadCoordinates.first : LatLng(27.717245, 85.323960),
      zoom: 12,
    );
  }
}
