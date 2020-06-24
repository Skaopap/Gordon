import 'package:gordon/models/MRepasItem.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class MRepas with ChangeNotifier
{
  List<MRepasItem> _listRepas = [
    MRepasItem(id: '012', name: "Le chilli de mamie" , imageUrl: "https://flockler.com/thumbs/sites/192/good-food-bean-pepper-chilli-5c9e2402-6dab-4277-912a-0acdd6bce3ea_s1200x630_c600x349_l0x138.jpg"),
    MRepasItem(id: '015', name: "Le cheese cake de papa" , imageUrl: "https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2019/01/Best-Cheesecake-Recipe-2-1-of-1-4.jpg"),
    MRepasItem(id: '016', name: "El Tartifletto" , imageUrl: "https://www.croquonslavie.fr/sites/default/files/images/recipe/field_recipe_single_carousel_img/recette-tartiflette_9408_0.jpg"),
    MRepasItem(id: '045', name: "El CousCous" , imageUrl: "https://img.cuisineaz.com/400x320/2016-04-28/i68325-couscous-et-sa-sauce.jpg"),
  ];

  List<MRepasItem> get listRepas {
    return [..._listRepas];
  }

  //notifyListeners();
}