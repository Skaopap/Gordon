import 'package:flutter/material.dart';
import 'package:gordon/widgets/ListRepas.dart';

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
          child: ListRepas()
          ),
    );
  }
}