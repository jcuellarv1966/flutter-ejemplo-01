import 'package:curso_delivery_app/src/features/presentation/login_page/View/login_page.dart';
import 'package:flutter/material.dart';

Widget primaryButton(BuildContext context, String texto) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepOrange,
      textStyle: const TextStyle(
          color: Colors.white, fontSize: 16, fontStyle: FontStyle.normal),
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    },
    child: Align(
      alignment: Alignment.center,
      child: Text(texto,
          style: const TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center),
    ),
  );
}
