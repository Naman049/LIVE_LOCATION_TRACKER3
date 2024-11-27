import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart'; // For date formatting
import '../data/dummy_data.dart'; // Import your dummy data here

class LocationScreen extends StatefulWidget {
  final String memberId;

  const LocationScreen({Key? key, required this.memberId}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late GoogleMapController mapController;
  List<LatLng> _visitedLocationsForSelectedDate = []; // Store visited locations for the selected date
  Set<Marker> _markers = {}; // Store markers for visited locations

  @override
  void initState() {
    super.initState();
    _fetchVisitedLocationsForMember(widget.memberId); // Fetch the visited locations
  }

  // Fetch visited locations based on the memberId (from the dummy data)
  void _fetchVisitedLocationsForMember(String memberId) {
    // Retrieve the visited locations for the selected member
    final locations = visitedLocations[memberId];
    if (locations != null) {
      setState(() {
        _visitedLocationsForSelectedDate = locations;

        // Generate markers for each visited location
        _markers = _visitedLocationsForSelectedDate.map((location) {
          return Marker(
            markerId: MarkerId(location.toString()),
            position: location,
            infoWindow: const InfoWindow(title: 'Visited Location'),
          );
        }).toSet();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Member ${widget.memberId} Location'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: _visitedLocationsForSelectedDate.isNotEmpty
                    ? _visitedLocationsForSelectedDate.first
                    : LatLng(0.0, 0.0), // Default to (0,0) if no visited locations
                zoom: 14.0,
              ),
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
              markers: _markers, // Display markers for visited locations
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total Locations: ${_visitedLocationsForSelectedDate.length}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
