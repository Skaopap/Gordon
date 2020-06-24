import 'package:flutter/material.dart';
import 'package:gordon/models/MListeCourse.dart';
import 'package:provider/provider.dart';
import 'package:gordon/widgets/ListeCourseItem.dart';

class ListListeCourse extends StatefulWidget {
  ListListeCourse({Key key}) : super(key: key);

  @override
  _ListListeCourseState createState() => _ListListeCourseState();
}

class _ListListeCourseState extends State<ListListeCourse> {
  @override
  Widget build(BuildContext context) {
    final listeCourseData = Provider.of<MListeCourse>(context);
    return ListView.builder(
      itemCount: listeCourseData.listItems.length,
      itemBuilder: (ctx ,index) {
        return ChangeNotifierProvider.value(
            value: listeCourseData.listItems[index],
            child: ListeCourseItem()
        );
      },
    );
  }
}