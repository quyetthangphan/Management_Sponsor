import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SponsorPageGoogleDoanhNghiep extends StatefulWidget {
  @override
  _CuaHangState createState() => _CuaHangState();
}

class _CuaHangState extends State<SponsorPageGoogleDoanhNghiep> {
  static const _inittiaCameraPosition = CameraPosition(
    target: LatLng(10.9531, 106.8025),
    zoom: 17,
  );

  List<Marker> allMarkers = [];

  @override
  void initState() {
    super.initState();
    allMarkers.add(
      Marker(
        markerId: MarkerId('App'),
        //draggable: true,
        position: (LatLng(10.9531, 106.8025)),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(title: 'Thử thác 3days-LabB304'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
      initialCameraPosition: _inittiaCameraPosition,
      markers: Set.from(allMarkers),
    ));
  }
}
