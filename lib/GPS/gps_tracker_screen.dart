import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'gps_screen_state.dart';

class GpsTrackerScreen extends StatefulWidget {
  @override
  _GpsTrackerScreenState createState() => _GpsTrackerScreenState();
}

class _GpsTrackerScreenState extends GpsTrackerState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GPS Tracker'),
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
        onMapCreated: onMapCreated,
        initialCameraPosition: initialCameraPosition,
        markers: markers,
      ),
    );
  }
}
