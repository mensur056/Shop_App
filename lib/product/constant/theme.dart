import 'package:flutter/material.dart';

class ProjectTheme {
  static ThemeData ligthTheme = ThemeData(
    textTheme: const TextTheme(headlineMedium: TextStyle(color: Color.fromARGB(255, 0, 23, 41), fontSize: 28)),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Color.fromARGB(255, 0, 23, 41),
      ),
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 0, 23, 41),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 23, 41),
    appBarTheme: const AppBarTheme(
      actionsIconTheme: IconThemeData(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 0, 23, 41),
    ),
  );
}
