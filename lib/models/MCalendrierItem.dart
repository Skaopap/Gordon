import 'package:flutter/material.dart';

class MCalendrierItem with ChangeNotifier
{
  final String id;
  final String day;
  final String breakfast;
  final String lunch;
  final String dinner;

  MCalendrierItem
      (
        {
          @required this.id,
          @required this.day,
          @required this.breakfast,
          @required this.lunch,
          @required this.dinner
        }
      );
      
}