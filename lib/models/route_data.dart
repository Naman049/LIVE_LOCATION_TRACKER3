// dummy_data.dart
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Dummy route data for 7 members
final Map<String, List<LatLng>> routes = {
  '1': [ // Member 1 Route
    LatLng(28.7041, 77.1025), // New Delhi
    LatLng(28.6149, 77.2090), // Connaught Place
    LatLng(28.5355, 77.3910), // Noida
  ],
  '2': [ // Member 2 Route
    LatLng(28.4595, 77.0266), // Gurgaon
    LatLng(28.5355, 77.3910), // Noida
  ],
  '3': [ // Member 3 Route
    LatLng(28.7041, 77.1025), // New Delhi
    LatLng(28.5355, 77.3910), // Noida
  ],
  '4': [ // Member 4 Route
    LatLng(28.4595, 77.0266), // Gurgaon
    LatLng(28.6149, 77.2090), // Connaught Place
    LatLng(28.7041, 77.1025), // New Delhi
  ],
  '5': [ // Member 5 Route
    LatLng(28.7041, 77.1025), // New Delhi
    LatLng(28.4595, 77.0266), // Gurgaon
    LatLng(28.6149, 77.2090), // Connaught Place
  ],
  '6': [ // Member 6 Route
    LatLng(28.6149, 77.2090), // Connaught Place
    LatLng(28.5355, 77.3910), // Noida
  ],
  '7': [ // Member 7 Route
    LatLng(28.4595, 77.0266), // Gurgaon
    LatLng(28.7041, 77.1025), // New Delhi
    LatLng(28.5355, 77.3910), // Noida
  ],
};

final Map<String, List<String>> locationNames = {
  '1': [
    'New Delhi (Start)',
    'Connaught Place (Stop)',
    'Noida (End)',
  ],
  '2': [
    'Gurgaon (Start)',
    'Noida (End)',
  ],
  '3': [
    'New Delhi (Start)',
    'Noida (End)',
  ],
  '4': [
    'Gurgaon (Start)',
    'Connaught Place (Stop)',
    'New Delhi (End)',
  ],
  '5': [
    'New Delhi (Start)',
    'Gurgaon (Stop)',
    'Connaught Place (End)',
  ],
  '6': [
    'Connaught Place (Start)',
    'Noida (End)',
  ],
  '7': [
    'Gurgaon (Start)',
    'New Delhi (Stop)',
    'Noida (End)',
  ],
};

final Map<String, List<String>> statuses = {
  '1': ['Visited', 'Stopped for 10 mins', 'Completed'],
  '2': ['Started', 'Completed'],
  '3': ['Started', 'Completed'],
  '4': ['Started', 'Visited', 'Completed'],
  '5': ['Started', 'Stopped for 10 mins', 'Completed'],
  '6': ['Started', 'Completed'],
  '7': ['Started', 'Stopped for 10 mins', 'Completed'],
};

final Map<String, List<String>> times = {
  '1': ['9:00 AM', '10:15 AM', '11:30 AM'],
  '2': ['8:30 AM', '10:45 AM'],
  '3': ['7:45 AM', '9:30 AM'],
  '4': ['9:15 AM', '10:00 AM', '11:00 AM'],
  '5': ['8:00 AM', '9:30 AM', '11:00 AM'],
  '6': ['9:45 AM', '11:15 AM'],
  '7': ['8:15 AM', '10:30 AM', '11:45 AM'],
};

final Map<String, List<LatLng>> stops = {
  '1': [LatLng(28.6149, 77.2090)], // Connaught Place
  '2': [],
  '3': [],
  '4': [LatLng(28.6149, 77.2090)], // Connaught Place
  '5': [LatLng(28.4595, 77.0266)], // Gurgaon
  '6': [],
  '7': [LatLng(28.7041, 77.1025)], // New Delhi
};
