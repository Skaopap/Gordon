import 'package:flutter/material.dart';
import 'package:gordon/widgets/ListListeCourse.dart';

class ListesCourse extends StatefulWidget {
  ListesCourse({Key key}) : super(key: key);

  @override
  _ListesCourseState createState() => _ListesCourseState();
}

class _ListesCourseState extends State<ListesCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListListeCourse()
          ),
    );
  }
}