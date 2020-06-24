import 'package:flutter/material.dart';

class ListeCourseInfos extends StatefulWidget {
  static const routeName = "/listeCourseInfos";
  ListeCourseInfos({Key key}) : super(key: key);

  @override
  _ListeCourseInfosState createState() => _ListeCourseInfosState();
}

class _ListeCourseInfosState extends State<ListeCourseInfos> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text("Liste Course Infos")
    );
  }
}