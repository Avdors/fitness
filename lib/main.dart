import 'package:fitness/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // убрать баннер отладки
      theme: ThemeData(fontFamily: 'poppins'), // установить шрифт по умолчанию для всего приложения
      home:  HomePage(),
    );
  }
}
