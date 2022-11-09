import 'dart:developer';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

import 'PermissionToUser.dart';

class LocationController extends GetxController {
  Position? posinitial;
  final lat = 0.0.obs, lng = 0.0.obs;
  @override
  void onInit() async {
    /// Run through here
    await PermissionToUser.permissionForLocation().then((value) async {
      posinitial = await PermissionToUser.determinePosition();
    }).whenComplete(() {
      getPositionData();
    });
    super.onInit();
  }

  getPositionData() async {
    // try to log the data if its not empty
    if (posinitial != null) {
      log("${posinitial!.latitude}", name: "latitude");
      log("${posinitial!.longitude}", name: "longtitude");

      /// just pass this to ui to use
      lat(posinitial!.latitude);
      lng(posinitial!.longitude);
    }
  }
}
