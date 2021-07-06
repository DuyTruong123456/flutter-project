import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import'direction_model.dart';
import 'direction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Maps',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.yellowAccent,
        ),
        home: HomeScreen());
  }
}
int check=0;
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();

}

class _HomeBodyState extends State<HomeBody> {
  Position _currentPosition;
bool start=false;
GoogleMapController _googleMapController;
Marker _origin;
Marker _destination;
Marker _yourplace;
Directions _info;
@override
void dispose()
{
  _googleMapController.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {

    var _initialCameraPosition=CameraPosition(target: LatLng(0,0),
      zoom:20.0,);
  _getCurrentLocation();
    if(_currentPosition!=null)_initialCameraPosition=CameraPosition(target: LatLng(_currentPosition.latitude,_currentPosition.longitude),
      zoom:20.0,);
    if(_currentPosition!=null)_yourplace=Marker(
      markerId: const MarkerId('yourplace'),
      infoWindow: const InfoWindow(title:'yourplace'),
      icon:BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position:_currentPosition!=null?LatLng(_currentPosition.latitude,_currentPosition.longitude):LatLng(0,0),
    );
    if(_currentPosition!=null)

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Flexible(child:
          ElevatedButton.icon(onPressed:(){
            setState(() {
              check=1;
            });

          },
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all<Color>(Colors.yellowAccent),
              ),
              icon: Icon(Icons.add_location,
                color:check==1?Colors.green:Colors.black,
              ),
              label: Text("origin",style:TextStyle(color:check==1?Colors.green:Colors.black,))),
              flex:5,
              fit:FlexFit.tight
          ),
          Flexible(child:
          ElevatedButton.icon(onPressed:(){setState(() {
            check=2;
          });},
              style: ButtonStyle(
                backgroundColor:MaterialStateProperty.all<Color>(Colors.yellowAccent),
              ),
              icon: Icon(Icons.add_location,
                color:check==2?Colors.red:Colors.black,
              ),
              label: Text("destination",style:TextStyle(color:check==2?Colors.red:Colors.black,))),
              flex:5,
              fit:FlexFit.tight
          ),
          Container(color:Colors.yellowAccent,
              child:
          IconButton(onPressed:(){setState(() {
            _googleMapController.animateCamera(CameraUpdate.newCameraPosition(
                CameraPosition(target: _origin.position,
                  zoom:20.0,
                )
            ));
          });},

            color: Colors.yellowAccent,
            icon:Icon(Icons.add_location,
              color:Colors.green,
            ),
          ),


          ),
          Container(color:Colors.yellowAccent,child:
          IconButton(onPressed:(){setState(() {
            _googleMapController.animateCamera(CameraUpdate.newCameraPosition(
                CameraPosition(target: _destination.position,
                  zoom:20.0,
                )
            ));
          });},
              color: Colors.yellowAccent,
            icon:Icon(Icons.add_location,
              color:Colors.red,
            ),
              ),

          ),
        ],

      ),
      body:Stack(alignment: Alignment.center,
        children:[ GoogleMap(
        myLocationButtonEnabled: true,
zoomControlsEnabled:false,
initialCameraPosition: _initialCameraPosition,
        onMapCreated:(controller){_googleMapController=controller;

        },
        markers: {
          _yourplace,
          if(_origin!=null)_origin,
          if(_destination!=null)_destination
        },
          polylines: {
            if(_origin!=null&&_destination!=null)
              Polyline(
                polylineId: const PolylineId('overview_polyline'),
                color: Colors.red,
                width: 5,
               /* points: _info.polylinePoints
                    .map((e) => LatLng(e.latitude, e.longitude))
                    .toList(),*/
                points:_info==null?<LatLng>[
                  _origin.position,
                  _destination.position,

                ]:_info.polylinePoints
                    .map((e) => LatLng(e.latitude, e.longitude))
                    .toList(),
              ),
          },
        onLongPress: addmarkers,
      //  polylines: ,
      ),
          if (_info != null)
            Positioned(
                top: 20.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6.0,
                      )
                    ],
                  ),
                  child: Text(
                    '${_info.totalDistance}, ${_info.totalDuration}',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ))
        ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        onPressed: ()=>_googleMapController.animateCamera(

          CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
        child:Icon(Icons.center_focus_strong_rounded)
      ),
    );
    else
       return Center(
      child: CircularProgressIndicator(),
    );


  }

_getCurrentLocation() {
  Geolocator
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
      .then((Position position) {
    setState(() {
      _currentPosition = position;
    });
  }).catchError((e) {
    print(e);
  });
}
  void addmarkers(LatLng pos) async{
  setState(() {
  if(_info==null)print('yes');
  if(_info!=null)print('no');
    if(check==1)
    {
      _origin=Marker(
        markerId: const MarkerId('origin'),
        infoWindow: const InfoWindow(title:'origin'),
        icon:BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        position:pos,
      );
    }
    if(check==2)
    {
      _destination=Marker(
        onTap: (){
          
        },
        markerId: const MarkerId('destination'),
        infoWindow: const InfoWindow(title:'destination'),
        icon:BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        position:pos,
      );
    }


  });
  final directions = await DirectionsRepository()
      .getDirections(origin: _origin.position, destination: _destination.position);
  setState(() => _info = directions);
  if(_origin!=null&&_destination!=null)
  {
    _info= await DirectionsRepository()
        .getDirections(origin: _origin.position, destination: _destination.position);
  }
  print(_origin.position);
  print( _destination.position);

  }
  }
