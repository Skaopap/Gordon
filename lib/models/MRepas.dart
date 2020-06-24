import 'package:gordon/models/MRepasItem.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class MRepas with ChangeNotifier
{
  List<MRepasItem> _listRepas = [
    MRepasItem(id: '012', name: "Le chilli de mamie" , imageUrl: "https://flockler.com/thumbs/sites/192/good-food-bean-pepper-chilli-5c9e2402-6dab-4277-912a-0acdd6bce3ea_s1200x630_c600x349_l0x138.jpg"),
    MRepasItem(id: '015', name: "Le cheese cake de papa" , imageUrl: "https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2019/01/Best-Cheesecake-Recipe-2-1-of-1-4.jpg")
  ];

  List<MRepasItem> get listRepas {
    return [..._listRepas];
  }

  //notifyListeners();
}