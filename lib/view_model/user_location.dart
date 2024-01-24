import 'package:aminahub/view_model/local_storage.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class UserLocationViewModel {
  void getUserLocation() async {
    String currentCity = "";
    LocationPermission permission = await _checkLocationPermission();

    if (_isLocationPermissionGranted(permission)) {
      Position position = await _getCurrentPosition();
      String? state =
          await _getStateFromCoordinates(position.latitude, position.longitude);

      currentCity = state ?? "Failed to retrieve location";
    }
    await saveUserLocationLocal(currentCity);
  }

  Future<LocationPermission> _checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission;
  }

  bool _isLocationPermissionGranted(LocationPermission permission) {
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  Future<Position> _getCurrentPosition() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<String?> _getStateFromCoordinates(
      double latitude, double longitude) async {
    List<Placemark> placeMarks =
        await placemarkFromCoordinates(latitude, longitude);

    if (placeMarks.isNotEmpty) {
      Placemark placeMark = placeMarks[0];
      return placeMark.administrativeArea;
    }
    return null;
  }
}
