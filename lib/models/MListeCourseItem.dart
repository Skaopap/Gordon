import 'package:flutter/material.dart';

class MListeCourseItem with ChangeNotifier
{
  final String id;
  final String generateDate;
  final String beginDate;
  final String endDate;

  MListeCourseItem
      (
      {
        @required this.id,
        @required this.generateDate,
        @required this.beginDate,
        @required this.endDate
      }
      );
      
}