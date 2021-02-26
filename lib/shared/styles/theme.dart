import 'package:flutter/material.dart';

ThemeData themeData() => ThemeData(
      scaffoldBackgroundColor: Colors.grey[200],
      appBarTheme: appBarTheme(),
      bottomNavigationBarTheme: _bottomNavigationBarTheme(),
    );

AppBarTheme appBarTheme() => AppBarTheme(
    elevation: 0,
    centerTitle: true,
    color: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.grey,
    ));

BottomNavigationBarThemeData _bottomNavigationBarTheme() =>
    BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
    );
