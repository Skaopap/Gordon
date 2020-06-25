import 'package:gordon/models/MCalendrierItem.dart';
import 'package:flutter/material.dart';

class MCalendrier with ChangeNotifier
{
  List<MCalendrierItem> _listItems = [
    MCalendrierItem(id: '001', day: "LUNDI", breakfast: "Fat Breakfast", lunch: "Salade Belge / Chili de Mamie / 4 quarts", dinner: "Burger de papy"),
    MCalendrierItem(id: '002', day: "MARDI", breakfast: "-", lunch: "Huîtres / Chili de Mamie / 4 quarts", dinner: "Rizoto"),
    MCalendrierItem(id: '002', day: "MARDI", breakfast: "-", lunch: "Huîtres / Chili de Mamie / 4 quarts", dinner: "Rizoto"),
    MCalendrierItem(id: '002', day: "MARDI", breakfast: "-", lunch: "Huîtres / Chili de Mamie / 4 quarts", dinner: "Rizoto"),
    MCalendrierItem(id: '002', day: "MARDI", breakfast: "-", lunch: "Huîtres / Chili de Mamie / 4 quarts", dinner: "Rizoto"),
    MCalendrierItem(id: '002', day: "MARDI", breakfast: "-", lunch: "Huîtres / Chili de Mamie / 4 quarts", dinner: "Rizoto"),
    MCalendrierItem(id: '002', day: "MARDI", breakfast: "-", lunch: "Huîtres / Chili de Mamie / 4 quarts", dinner: "Rizoto"),
    MCalendrierItem(id: '003', day: "MERCREDI", breakfast: "-", lunch: "Huîtres / Chili de Mamie / 4 quarts", dinner: "Rizoto")
  ];

  List<MCalendrierItem> get listItems {
    return [..._listItems];
  }
}