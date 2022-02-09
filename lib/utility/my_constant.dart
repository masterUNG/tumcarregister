import 'package:flutter/material.dart';

class MyConstant {
  static Color primary = const Color.fromARGB(255, 14, 231, 97);
  static Color dark = const Color.fromARGB(255, 30, 30, 173);
  static Color light = const Color.fromARGB(255, 101, 101, 206);

  TextStyle h1Style() => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: dark,
      );

      TextStyle h2Style() => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: dark,
      );

      TextStyle h3Style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: dark,
      );
}
