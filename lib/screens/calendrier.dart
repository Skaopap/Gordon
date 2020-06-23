import 'package:flutter/material.dart';

class Calendrier extends StatefulWidget {
  Calendrier({Key key}) : super(key: key);

  @override
  _CalendrierState createState() => _CalendrierState();
}

class _CalendrierState extends State<Calendrier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: Text("Calendrier")
          ),
    );
  }
}