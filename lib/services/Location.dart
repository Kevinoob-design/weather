import 'package:geolocator/geolocator.dart';

class Location {
  static Future<Position> getCurrentPosition() {
    return Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low).then((position) {
      return position;
    });
  }

  Stream<Position> getStreamedLocation() {
    return Geolocator().getPositionStream(LocationOptions(accuracy: LocationAccuracy.low), GeolocationPermission.locationWhenInUse);
  }

  static Future<Map> verifyLocationPermission() {
    return Geolocator().checkGeolocationPermissionStatus().then((hasPermission) {
      if (hasPermission.value == 2) {
        return Geolocator().isLocationServiceEnabled().then((isEnable) {
          if (isEnable) {
            return {"isEnable": isEnable};
          } else {
            return {"msg": 'Servicio de locacion desactivado, revise los ajustes de su dispositivo', "isEnable": isEnable};
          }
        });
      } else if (hasPermission.value == 1) {
        return {"msg": 'Servicio de locacion desactivado, revise los ajustes de su dispositivo', "isEnable": false};
      } else if (hasPermission.value == 0) {
        return {"msg": 'Servicio de locacion negados, revise los ajustes de su dispositivo', "isEnable": false};
      } else {
        return {"msg": 'No se pudimos obtener servicio de locacion, revise los ajustes de su dispositivo', "isEnable": false};
      }
    });
  }
}
