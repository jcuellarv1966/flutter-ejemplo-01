import 'package:flutter/material.dart';

Widget roundedButton(
    {required BuildContext context,
    double width = 350.0,
    double height = 36.0,
    double radius = 8.0,
    bool isWithIcon = false,
    ImageProvider<Object>? icon,
    required String labelButton,
    required Color color,
    required Function() func}) {
  return Container(
    width: width,
    height: height,
    margin: const EdgeInsets.only(top: 20.0),
    child: isWithIcon
        ? _raisedButtonWithIcon(radius, icon!, labelButton, color, func)
        : _raisedButtonNotIcon(radius, labelButton, color, func),
  );
}

Widget _raisedButtonWithIcon(double radius, ImageProvider<Object> icon,
    String labelButton, Color color, Function() func) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontStyle: FontStyle.normal),
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
      onPressed: func,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: icon, width: 32.0, height: 32.0),
          Container(
            margin: const EdgeInsets.only(left: 6.0),
            child: Text(
              labelButton,
              style: const TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          )
        ],
      ));
}

Widget _raisedButtonNotIcon(
    double radius, String labelButton, Color color, Function() func) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontStyle: FontStyle.normal),
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
      onPressed: func,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 6.0),
            child: Text(
              labelButton,
              style: const TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          )
        ],
      ));
}
