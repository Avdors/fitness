import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name, 
    required this.iconPath,
    required this.boxColor});

   static List<CategoryModel> getCategories() { // статический метод для получения списка категорий, позволяет не создавать экземпляр класса для доступа к методу
    List<CategoryModel> categories = [];
    categories.add(CategoryModel(
      name: "Salad",
      iconPath: "assets/icon/category.svg",
      boxColor: Color(0xff92A3FD)
    ));
    categories.add(CategoryModel(
      name: "Cake",
      iconPath: "assets/icon/listgreen.svg",
      boxColor: Color(0xffC58BF2)
    ));
    categories.add(CategoryModel(
      name: "Pie",
      iconPath: "assets/icon/listgreen.svg",
      boxColor: Color(0xff92A3FD)
    ));
    categories.add(CategoryModel(
      name: "Smoothies",
      iconPath: "assets/icon/listgreen.svg",
      boxColor: Color(0xff92A3FD)
    ));
    return categories;
  }  
}