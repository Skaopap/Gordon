import 'package:flutter/material.dart';

class RepasInfos extends StatefulWidget {
  static const routeName = "/repasInfos";
  RepasInfos({Key key}) : super(key: key);

  @override
  _RepasInfosState createState() => _RepasInfosState();
}

class _RepasInfosState extends State<RepasInfos> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("Repas Infos")
    );
  }
}