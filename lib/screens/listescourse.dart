import 'package:flutter/material.dart';
import 'package:gordon/theme/colors.dart';
import 'package:gordon/widgets/ListListeCourse.dart';
import 'package:gordon/widgets/NewListeDeCourses.dart';

class ListesCourse extends StatefulWidget {
  ListesCourse({Key key}) : super(key: key);

  @override
  _ListesCourseState createState() => _ListesCourseState();
}

class _ListesCourseState extends State<ListesCourse> {

  void _startAddNewListe(BuildContext ctx)
  {
      showModalBottomSheet(isScrollControlled: true, isDismissible: true,backgroundColor: Colors.white.withOpacity(0), context: ctx, builder: (_) {
        return NewListeDeCourses();
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(onPressed: () {_startAddNewListe(context);},icon: Icon(Icons.add),
      label : Text("Génerer Liste sur une période", style: TextStyle(color: Colors.white),), backgroundColor: DarkGrey,
      ), 
      body: SafeArea(
          child: ListListeCourse(),
          
          ),
    );
  }
}