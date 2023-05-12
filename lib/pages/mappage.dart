import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myworkspace/models/subcategory.dart';
import 'package:myworkspace/widgets/mainappbar.dart';
import 'package:myworkspace/widgets/mapbottompill.dart';
import 'package:myworkspace/widgets/mapuserbadge.dart';

const LatLng SOURCE_LOCATION = LatLng(19.718224, -101.190634);
const LatLng DEST_LOCATION = LatLng(19.723516, -101.187973);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;

class MapPage extends StatefulWidget{
  MapPage({Key? key, required this.subCategory}) : super(key: key);

  SubCategory subCategory;

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  double pinPillPosition = PIN_VISIBLE_POSITION;
  late LatLng currentLocation;
  late LatLng destinationLocation;
  bool userBadgeSelected = false;

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;


  @override
  void initState() {
    super.initState();

    polylinePoints = PolylinePoints();

    //Set up initial location
    this.setInitialLocation();

    //Set up the marker icons
    this.setSourceAndDestinationMarkerIcons();
  }

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.0),
      "assets/images/source_pin_android.png"
    );

    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0),
        "assets/images/destination_pin_android.png"
    );
  }

  void setInitialLocation() {
    currentLocation = LatLng(
      SOURCE_LOCATION.latitude,
      SOURCE_LOCATION.longitude
    );

    destinationLocation = LatLng(
      DEST_LOCATION.latitude,
      DEST_LOCATION.longitude
    );
  }

  @override
  Widget build(BuildContext context) {

    CameraPosition initialCameraPosition = CameraPosition(
      zoom: CAMERA_ZOOM,
      tilt: CAMERA_TILT,
      bearing: CAMERA_BEARING,
      target: SOURCE_LOCATION
    );

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
                  myLocationEnabled: true,
                  compassEnabled: false,
                  tiltGesturesEnabled: false,
                  polylines: _polylines,
                  markers: _markers,
                  mapType: MapType.normal,
                  initialCameraPosition: initialCameraPosition,
                  onTap: (LatLng loc) {
                    setState(() {
                      this.pinPillPosition = PIN_INVISIBLE_POSITION;
                      this.userBadgeSelected = false;
                    });
                  },
                  onMapCreated: (GoogleMapController controller){
                    _controller.complete(controller);

                 showPinsOnMap();
                 setPolylines();
               },
             )
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: MapUserBadge(
              isSelected: this.userBadgeSelected,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            left: 0,
            right: 0,
            bottom: this.pinPillPosition,
            child: MapBottomPill(subCategory: widget.subCategory)
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: MainAppBar(
              showProfilePic: false,
            ),
          )
        ],
      )
    );
  }

  void showPinsOnMap(){
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId("sourcePin"),
          position: currentLocation,
          icon: sourceIcon,
          onTap: () {
            setState(() {
              this.userBadgeSelected = true;
            });
          }
      ));

      _markers.add(Marker(
          markerId: MarkerId("destinationPin"),
          position: destinationLocation,
          icon: destinationIcon,
          onTap: () {
            setState(() {
              this.pinPillPosition = PIN_VISIBLE_POSITION;
            });
          }
      ));
    });
  }

  void setPolylines() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyBEEPleYte4pjX3tIy76gqW62mws5TlRgk",
      PointLatLng(
        currentLocation.latitude,
        currentLocation.longitude
      ),
      PointLatLng(
        destinationLocation.latitude,
        destinationLocation.longitude
      )
    );

    if (result.status == "OK") {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });

      setState(() {
        _polylines.add(
          Polyline(
            width: 10,
            polylineId: PolylineId("polyLine"),
            color: Color(0xFF08A5CB),
            points: polylineCoordinates
          )
        );
      });
    }
  }
}



