import 'package:flutter/material.dart';
import "package:world_time/services/world_time.dart";

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    // Create a new instance of the time variable
    WorldTime instance = WorldTime(location: "Berlin", flag: "germany.png", url: "/America/Chicago" );
    await instance.getTime();
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Text("Loading..."),
      ),
    );
  }
}

