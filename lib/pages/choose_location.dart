import 'package:flutter/material.dart';

class ChoodLocation extends StatefulWidget {
  @override
  _ChoodLocationState createState() => _ChoodLocationState();
}

class _ChoodLocationState extends State<ChoodLocation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Choose a location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(

      ),
    );
  }
}

