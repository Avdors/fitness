import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top:40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1d1617).withOpacity(0.1),
                blurRadius: 40,
                spreadRadius: 0.0
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15), //отступ текста внутри поля
              prefixIcon: Padding(
                padding: const EdgeInsets.all(15), // обернули в паддинг чтобы изменить размер инконки
                child: SvgPicture.asset(
                        'assets/icon/arrow-left.svg',
                      ),
              ),
              suffixIcon:  IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, // выравнивает по правому краю
                  children: [
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 0.1, // толщина разделителя
                      indent: 10, // отступ сверху
                      endIndent: 10, // отступ снизу
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15), // обернули в паддинг чтобы изменить размер инконки
                      child: SvgPicture.asset(
                              'assets/icon/menu.svg',
                            ),
                    ),
                  ],
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )
            ),
          ),
        )
      ],),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Breakfast',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: SvgPicture.asset(
        'assets/icon/arrow-left.svg',
        width: 20,
        height: 20,
      ),
    ),
    actions: [
      GestureDetector(
      onTap: () {
        // Handle menu tap
      },
      child: 
      Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: SvgPicture.asset(
        'assets/icon/menu.svg',
        width: 20,
        height: 20,
      ),
    ),

    ) 
    ],
  );
  }
}