import 'package:flutter/material.dart';
import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_text.dart';

Future showAlertDialog(BuildContext context, ImageProvider<Object> imagePath,
    String headerTitle, String headerSubTitle, Widget doneButton) async {
  await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
          content: Container(
            height: 360,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: headerText(
                      headerTitle, primaryColor, FontWeight.bold, 20.0),
                ),
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Text(
                    headerSubTitle,
                    style: const TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                doneButton
              ],
            ),
          ),
        );
      });
}

// ignore: unused_element
Widget _doneButton(
    BuildContext context, String labelButton, Function doneButtonFunc) {
  return Container(
      width: 370.0,
      height: 36.0,
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          onPressed: () {
            doneButtonFunc();
          },
          child: Align(
            alignment: Alignment.center,
            child: Text(labelButton,
                style: const TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center),
          )));
}
