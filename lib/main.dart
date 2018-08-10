import 'package:flutter/material.dart';
import 'food.dart';
import 'entertainment.dart';
import 'lodging.dart';
import 'transportation.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: LaunchScreen(),
  ));
}

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Launch Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Landing Page'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LandingPage()),
            );
          },
        ),
      ),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Landing Page"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              //House
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LodgingScreen()),
              );
            },
            child: Text('Go House!'),
          ),
          RaisedButton(
            onPressed: () {
              //Food
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodScreen()),
              );
            },
            child: Text('Go Food!'),
          ),
          RaisedButton(
            onPressed: () {
              //Food
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EntertainmentScreen()),
              );
            },
            child: Text('Go Entertainment!'),
          ),
          RaisedButton(
            onPressed: () {
              //Food
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransportationScreen()),
              );
            },
            child: Text('Go Transport!'),
          )
        ],
      )),
    );
  }
}