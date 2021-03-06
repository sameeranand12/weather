import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void geoLocation() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  print(position);

    LocationPermission permission = await Geolocator.requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            geoLocation();
          },
          child: Text('Device Location'),
        ),
      ),
    );
  }
}
