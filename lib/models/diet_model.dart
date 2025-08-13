import 'package:flutter/material.dart';

class DietModel {
  String? name;
  String? iconPath;
  String? level;
  String? duration;
  String? calories;
  bool? viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    required this.viewIsSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(DietModel(
      name: "Honey pancakes",
      iconPath: "assets/icon/category.svg",
      level: "Easy",
      duration: "30 mins",
      calories: "180 kcal",
      viewIsSelected: true,
    ));

    diets.add(DietModel(
      name: "Canie bread",
      iconPath: "assets/icon/category.svg",
      level: "Easy",
      duration: "20 mins",
      calories: "230 kcal",
      viewIsSelected: false,
    ));

    return diets;
  }
  
}