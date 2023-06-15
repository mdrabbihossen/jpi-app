import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  static const String routeName = '/location';

  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  static const CameraPosition cameraPosition = CameraPosition(
    target: LatLng(23.178569, 89.215845),
    zoom: 15,
  );

   final List<Marker> markers=[

   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: cameraPosition,
      ),
    );
  }
}
