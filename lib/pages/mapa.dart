// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../Controllers/LocationController.dart';

class MapaPage extends StatelessWidget {
  LocationController mapcontrol = LocationController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.local_parking_outlined),
          title: Text('E-Park'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.supervised_user_circle),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('No user in UI demonstration.')));
              },
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.red,
              width: 15.0,
            ),
          ],
        ),
        body: Center(
            child: Row(
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: const Text(
                      'Parqueadero #8 - Universidad del Norte',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.red),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(

                              /// you can use the lat long that was declared on the controller
                              /// anyways many ways to do it.
                              target: LatLng(mapcontrol.posinitial!.latitude,
                                  mapcontrol.posinitial!.longitude),
                              zoom: 16),
                          minMaxZoomPreference: MinMaxZoomPreference(15.5, 19),
                          zoomGesturesEnabled: true,
                          cameraTargetBounds: CameraTargetBounds(
                            LatLngBounds(
                              northeast: LatLng(43.7970928, -79.3067414),
                              southwest: LatLng(43.592580, -79.483674),
                            ),
                          ),
                        ),
                      )), //aca va el expanded
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 1,
                      child: TextButton(
                        child: const Text(
                          'Abrir en Google Maps',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  'No Google Maps implementation in UI demonstration.')));
                        },
                      )),
                  Expanded(
                      flex: 1,
                      child: TextButton(
                        child: const Text(
                          'Regresar',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  Expanded(flex: 1, child: Container()),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        )));
  }
}
