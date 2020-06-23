import 'package:flutter/material.dart';

class Repas extends StatefulWidget {
  Repas({Key key}) : super(key: key);

  @override
  _RepasState createState() => _RepasState();
}

class _RepasState extends State<Repas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: Text("Repas")
          ),
    );
  }
}