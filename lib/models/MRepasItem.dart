import 'package:flutter/material.dart';

class MRepasItem with ChangeNotifier
{
  final String id;
  final String name;
  final String imageUrl;
  final String ingredients ;
  final String preparation;

  static const defaultIngredient = "Farine \n Blé \n Sel \n Beurre";
  static const defaultPreparation = "Appelez le voisin, il est surement plus doué, mais au pire mélangez tout et mettre au four.";

  MRepasItem(
      {@required this.id, @required this.name, @required this.imageUrl, this.ingredients = defaultIngredient , this.preparation = defaultPreparation });

}