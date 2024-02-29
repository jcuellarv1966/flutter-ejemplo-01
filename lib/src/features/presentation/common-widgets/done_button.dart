import 'package:flutter/material.dart';

Widget doneButton(BuildContext context, String labelButton) {
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
            Navigator.pushNamed(context, "login");
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
