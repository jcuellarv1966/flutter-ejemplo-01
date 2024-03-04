import 'package:flutter/material.dart';

Widget headerText(
    {String texto = "",
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.bold,
    double fontSize = 12.0,
    TextAlign textAlign = TextAlign.left}) {
  return Text(
    texto,
    textAlign: textAlign,
    style: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ),
  );
}
