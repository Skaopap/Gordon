import 'package:flutter/material.dart';
import 'package:gordon/theme/colors.dart';
import 'package:gordon/widgets/ListeInfosItemCochable.dart';

class ListeCourseInfos extends StatefulWidget {
  static const routeName = "/listeCourseInfos";
  ListeCourseInfos({Key key}) : super(key: key);

  @override
  _ListeCourseInfosState createState() => _ListeCourseInfosState();
}

class _ListeCourseInfosState extends State<ListeCourseInfos> {
  final ingredientsData = ["oeuf 2kg", "poulet 100g"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pink,
        title: Text(  "Liste du 21 juin", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ) ,
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child : ListView.builder(
          itemCount: ingredientsData.length,
          itemBuilder: (ctx ,index) {
            return ListeInfosItemCochable(Ingredient:ingredientsData[index]);
          },
        )
      )
    );
  }
}