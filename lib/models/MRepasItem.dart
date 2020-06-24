import 'package:flutter/material.dart';

class MRepasItem with ChangeNotifier
{
  final String id;
  final String name;
  final String imageUrl;

  MRepasItem(
      {@required this.id, @required this.name, @required this.imageUrl});
      
}