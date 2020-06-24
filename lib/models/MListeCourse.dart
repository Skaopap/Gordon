import 'package:provider/provider.dart';
import 'package:gordon/models/MListeCourseItem.dart';
import 'package:flutter/material.dart';

class MListeCourse with ChangeNotifier
{
  List<MListeCourseItem> _listItems = [
    MListeCourseItem(id: '001', generateDate: "21/05", beginDate: "24/05", endDate: "01/06"),
    MListeCourseItem(id: '002', generateDate: "30/05", beginDate: "01/06", endDate: "08/06")
  ];

  List<MListeCourseItem> get listItems {
    return [..._listItems];
  }

//notifyListeners();
}