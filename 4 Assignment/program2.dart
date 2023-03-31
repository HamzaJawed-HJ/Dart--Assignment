//Create a map that associates the names of cities with their latitude and longitude coordinates.
// Given a starting and ending city,
// find the shortest distance between them (you can assume a spherical Earth).
import 'dart:math';

void main() {
  String startCity = 'Sydney';
  String endCity = 'Moscow';
  double distance = shortestDistance(startCity, endCity);
  print(
      "Distance between $startCity and $endCity is: ${distance.toStringAsFixed(3)}");
}

Map<String, Map<String, double>> cityCoordinates = {
  'Tokyo': {'lat': 35.6895, 'lon': 139.6917},
  'Sydney': {'lat': -33.8688, 'lon': 151.2093},
  'Beijing': {'lat': 39.9042, 'lon': 116.4074},
  'Moscow': {'lat': 55.7558, 'lon': 37.6173},
};

double degreesToRadians(double degrees) {
  return degrees * pi / 180;
}

double haversine(double lat1, double lon1, double lat2, double lon2) {
  double R = 6371; // Earth's radius in km
  double dLat = degreesToRadians(lat2 - lat1);
  double dLon = degreesToRadians(lon2 - lon1);
  double a = (sin(dLat / 2) * sin(dLat / 2)) +
      (cos(degreesToRadians(lat1)) *
          cos(degreesToRadians(lat2)) *
          sin(dLon / 2) *
          sin(dLon / 2));
  double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  return R * c;
}

double shortestDistance(String startCity, String endCity) {
  double? lat1 = cityCoordinates[startCity]?['lat'];
  double? lon1 = cityCoordinates[startCity]?['lon'];
  double? lat2 = cityCoordinates[endCity]?['lat'];
  double? lon2 = cityCoordinates[endCity]?['lon'];

  if (lat1 != null && lon1 != null && lat2 != null && lon2 != null) {
    return haversine(lat1, lon1, lat2, lon2);
  } else {
    throw Exception('Invalid city name');
  }
}
