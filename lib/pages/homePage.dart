import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
class HomePage extends StatelessWidget{
  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GoogleMap(
              initialCameraPosition: CameraPosition(target: LatLng(19.212878560477964, 73.1012334893475),zoom: 14),
              onMapCreated: (GoogleMapController controller){
                _controller.complete(controller);
              },
          )
        ],
      ),
    );
  }
}