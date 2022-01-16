import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
    fontFamily: 'Georgia',
    splashColor: Colors.orange,
    colorScheme: ColorScheme.fromSwatch(
            backgroundColor: Colors.blue,
            primaryColorDark: Colors.white,
            primarySwatch: Colors.green,
            brightness: Brightness.dark)
        .copyWith(
      secondary: Colors.red,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
          fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.red),
      headline5: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlueAccent),
      button: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlueAccent),
      headline2: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.greenAccent),
      bodyText1: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange),
    ));
