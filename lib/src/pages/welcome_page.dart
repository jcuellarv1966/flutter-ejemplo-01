import 'dart:ui';

import 'package:curso_delivery_app/src/pages/login_page.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1679279544754-ad72be8acf94?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ))),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 56.0, vertical: 20.0),
                child: const Text(
                  'Tec Data',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 56.0),
                )),
            Container(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 56.0, vertical: 20.0),
                child: const Text(
                  'Alta Tecnologia en Inversiones Rentables',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 36.0),
                )),
            Container(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 56.0, vertical: 40),
                child: const Text(
                  'Investments and Finance Assets with true benefits ...',
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0),
                )),
            // ignore: sized_box_for_whitespace
            Container(
                width: 350.0,
                height: 36.0,
                margin: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      // side: BorderSide(color: Colors.yellow, width: 5),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontStyle: FontStyle.normal),
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Login",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center),
                    ))),
            // ignore: sized_box_for_whitespace
            Container(
              width: 350.0,
              height: 36.0,
              margin: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                        image: AssetImage('assets/facebook.webp'),
                        width: 32.0,
                        height: 32.0),
                    Container(
                      margin: const EdgeInsets.only(left: 6.0),
                      child: const Text(
                        'Connect with facebook',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 350.0,
              height: 36.0,
              margin: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                        image: AssetImage('assets/instagram.jpeg'),
                        width: 20.0,
                        height: 20.0),
                    Container(
                      margin: const EdgeInsets.only(left: 6.0),
                      child: const Text(
                        'Connect with instagram',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 350.0,
              height: 36.0,
              margin: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                        image: AssetImage('assets/reddit.png'),
                        width: 22.0,
                        height: 22.0),
                    Container(
                      margin: const EdgeInsets.only(left: 6.0),
                      child: const Text(
                        'Connect with reddit',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
