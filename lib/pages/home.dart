import 'package:fitness/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); // создаем состояние для HomePage
  // это позволяет нам управлять состоянием страницы, например, обновлять список категорий
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = []; 
 // назначаем переменную для хранения списка категорий
  void _getCategories() {
    categories = CategoryModel.getCategories(); // вызываем метод getCategories из модели CategoryModel
  }

  @override
  void initState() {
   
    _getCategories(); // вызываем метод getCategories при инициализации состояния
  }

  @override
  Widget build(BuildContext context) {
    _getCategories(); // обновляем список категорий при каждом построении виджета
    return Scaffold( 
      appBar: appBar(), // используем метод appBar для создания AppBar
      backgroundColor: Colors.white, // цвет фона страницы в каркассе
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // выравнивание по левому краю
        children: [  // основной контент страницы
        _searchField(),
        SizedBox(height: 40), // отступ между полем поиска и заголовком
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // выравнивание по левому краю, прописываем еще раз
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Category",
                style: TextStyle(
                  color: Colors.black, // цвет текста
                  fontSize: 18, // размер шрифта
                  fontWeight: FontWeight.bold, // жирный шрифт
                )
              ),
            ),
            SizedBox(height: 15), // отступ между заголовком и контейнером с категориями
            Container(
              height: 150, // высота контейнера с категориями
              color: Colors.green,
              child: ListView.builder(
                itemBuilder: (context, index){
                  return Container(

                  ); // здесь будет код для отображения категорий
                }
              ),
            )
          ],
        )
      ],),
    );
  }

  Container _searchField() {
    return Container(  // контейнер для поля поиска
        margin: EdgeInsets.only(top:40, left: 20, right: 20), // отступы сверху, слева и справа
        decoration: BoxDecoration(  // оформление контейнера
          boxShadow: [  // тень для контейнера
            BoxShadow(
              color: Color(0xff1d1617).withOpacity(0.1), // цвет тени с прозрачностью
              blurRadius: 40, // радиус размытия тени
              spreadRadius: 0.0 // радиус распространения тени
            )
          ]
        ),
        child: TextField( // поле ввода текста
          decoration: InputDecoration(  // оформление поля ввода
            filled: true, // заливка фона с прозрачностью
            fillColor: Colors.white, // цвет фона
            contentPadding: EdgeInsets.all(15), //отступ текста внутри поля
            hintText: 'Search Pancake', // текст-подсказка
            hintStyle: TextStyle(
              color: Color(0xffDDDADA), // цвет текста-подсказки 
              fontSize: 14, // размер шрифта

            ), // стиль текста-подсказки
            prefixIcon: Padding(  // иконка слева от поля ввода
              padding: const EdgeInsets.all(15), // обернули в паддинг чтобы изменить размер инконки
              child: SvgPicture.asset(  // иконка поиска
                      'assets/icon/arrow-left.svg',
                    ),
            ),
            suffixIcon:  Container( // оборачиваем в контейнер для того чтобы задать фиксированную ширину, иначе не видно hintText: 'Search Pancake'
              width: 100, // ширина контейнера для иконки справа
              child: IntrinsicHeight( // этот виджет позволяет вертикально выровнять иконки справа
                child: Row( // вертикальная строка с иконками справа
                  crossAxisAlignment: CrossAxisAlignment.start, // выравнивает по верхнему краю
                  mainAxisAlignment: MainAxisAlignment.end, // выравнивает по правому краю
                  children: [  
                    VerticalDivider(  // вертикальный разделитель между иконками
                      color: Colors.black,  // цвет разделителя
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
            ),
            border: OutlineInputBorder( // оформление границ поля ввода
              borderRadius: BorderRadius.circular(15),  // скругление углов
              borderSide: BorderSide.none,  // убираем границу
            )
          ),
        ),
      );
  }

  AppBar appBar() {
    return AppBar(
      title: Text(
        'Breakfast',
        style: TextStyle(
          fontSize: 18, // размер шрифта
          fontWeight: FontWeight.bold, // жирный шрифт
          color: Colors.black, // цвет текста
        ),
      ),
      backgroundColor: Colors.white,  // цвет фона
      elevation: 0.0,   // убираем тень
      centerTitle: true,  // выравнивание заголовка по центру
      leading: Container(    // контейнер для левого элемента
        margin: EdgeInsets.all(10), // отступы вокруг контейнера
        alignment: Alignment.center, // выравнивание содержимого по центру
        decoration: BoxDecoration( // выравнивание содержимого по центру
          color: Colors.white, // цвет фона
          borderRadius: BorderRadius.circular(10)   // скругление углов
      ),
      child: SvgPicture.asset( // иконка стрелки назад
        'assets/icon/arrow-left.svg',
        width: 20,
        height: 20,
      ),
    ),
    actions: [
      GestureDetector( // обработчик нажатия на иконку меню
      onTap: () {
        // Handle menu tap
      },
      child: 
      Container(
        margin: EdgeInsets.all(10), // отступы вокруг контейнера
        alignment: Alignment.center,  // выравнивание содержимого по центру
        decoration: BoxDecoration(  // выравнивание содержимого по центру
          color: Colors.white,  // цвет фона
          borderRadius: BorderRadius.circular(10) // скругление углов
      ),
      child: SvgPicture.asset(  // иконка меню
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