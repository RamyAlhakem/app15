import 'package:flutter/material.dart';

class Mytheme {
  static ThemeData lightmode = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.lightGreen,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green,
        titleTextStyle: TextStyle(
            fontSize: 28,
            color: Colors.yellowAccent,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
        iconTheme: IconThemeData(color: Colors.yellowAccent),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.green, foregroundColor: Colors.yellowAccent),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.yellowAccent,
          selectedIconTheme: IconThemeData(size: 30),
          selectedLabelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic)),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.lightGreen),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.green),
          foregroundColor: MaterialStatePropertyAll(Colors.yellowAccent),
          padding:
              MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 70)),
          textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic)),
          shape: MaterialStateProperty.all(StadiumBorder()),
        ),
      ),
      textTheme: TextTheme(
          bodyText2: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic)),
      dividerColor: Colors.black);

  static ThemeData darkmode = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.purple,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
          iconTheme: IconThemeData(color: Colors.white)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple, foregroundColor: Colors.white),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.pink,
          selectedIconTheme: IconThemeData(size: 30),
          selectedLabelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic)),
      drawerTheme: DrawerThemeData(backgroundColor: Colors.purple),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              padding: MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 70)),
              textStyle: MaterialStatePropertyAll(TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
              shape: MaterialStateProperty.all(StadiumBorder()))),
      textTheme: TextTheme(
          bodyText2: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic)),
      dividerColor: Colors.white);
}
