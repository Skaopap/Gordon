import 'package:flutter/material.dart';
import 'package:gordon/models/MRepas.dart';
import 'package:gordon/models/MRepasItem.dart';
import 'package:provider/provider.dart';
import 'package:gordon/theme/colors.dart';


class RepasInfos extends StatefulWidget {
  static const routeName = "/repasInfos";
  RepasInfos({Key key}) : super(key: key);

  @override
  _RepasInfosState createState() => _RepasInfosState();
}

class _RepasInfosState extends State<RepasInfos> {

  String idRepas;
  MRepasItem repas;

  @override
  Widget build(BuildContext context) {

      idRepas = ModalRoute.of(context).settings.arguments as String ;
      final repasData = Provider.of<MRepas>(context);
      repas = repasData.listRepas
          .firstWhere((elmt) => elmt.id == idRepas);

    return Scaffold(
      backgroundColor: LightGrey,
      appBar: AppBar(
              backgroundColor: Pink,
              title: Text(  repas.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ) ,
      body: SafeArea(
        
        child :ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Image.network(
          repas.imageUrl,
          fit: BoxFit.cover,
        ),
        Card
        (
        color: Salmon,
        elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child : ListTile(
          title: Text(
            "Liste D'ingredients ui",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        ),
        Card
        (
        color: White,
        elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
        child : ListTile(
          title: Text(
            repas.ingredients,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        ),
        Card
        (
        color: Salmon,
        elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child : ListTile(
          title: Text(
            "Préparation",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        ),
        Card
        (
        color: White,
        elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
        child : ListTile(
          title: Text(
            repas.preparation,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        ),
      ],
      )));
  }
}