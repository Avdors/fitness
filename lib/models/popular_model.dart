import 'package:flutter/material.dart';

class PopularDietModel {
  String? name;
  String? iconPath;
  String? level;
  String? duration;
  String? calories;
  bool? viewIsSelected;
  Color? boxColor;

  PopularDietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    required this.viewIsSelected,
    this.boxColor = const Color(0xff92A3FD), // default color if not provided
  });

  static List<PopularDietModel> getPopularDiets() {
    List<PopularDietModel> popularDiets = [];

    popularDiets.add(PopularDietModel(
      name: "Bluebarry Pancakes",
      iconPath: "assets/icon/popular-png.png",
      level: "Medium",
      duration: "30 mins",
      calories: "230 kcal",
      viewIsSelected: true,
    ));

    popularDiets.add(PopularDietModel(
      name: "Salmon nigiri",
      iconPath: "assets/icon/popular-png.png",
      level: "Easy",
      duration: "10 mins",
      calories: "200 kcal",
      viewIsSelected: false,
    ));

    return popularDiets;
  }
}