import 'package:geolocator/geolocator.dart';

class Location {
  static Future<Position> getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }

  Stream<Position> getStreamedLocation() {
    return Geolocator.getPositionStream(desiredAccuracy: LocationAccuracy.low);
  }

  static Future<Map> verifyLocationPermission() {
    return Geolocator.checkPermission().then((hasPermission) {
      if (hasPermission.index == 3 || hasPermission.index == 4) {
        return Geolocator.isLocationServiceEnabled().then((isEnable) {
          if (isEnable) {
            return {"isEnable": isEnable};
          } else {
            return {"msg": 'Servicio de locacion desactivado, revise los ajustes de su dispositivo', "isEnable": isEnable};
          }
        });
      } else if (hasPermission.index == 2) {
        return {"msg": 'Servicio de locacion desactivado, revise los ajustes de su dispositivo', "isEnable": false};
      } else if (hasPermission.index == 1) {
        return {"msg": 'Servicio de locacion negados, revise los ajustes de su dispositivo', "isEnable": false};
      } else {
        return {"msg": 'No se pudimos obtener servicio de locacion, revise los ajustes de su dispositivo', "isEnable": false};
      }
    });
  }
}
