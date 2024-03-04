import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Buttons/rounded_button.dart';

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
                      color: Color.fromRGBO(0, 0, 255, 1.0),
                      fontWeight: FontWeight.w900,
                      fontSize: 56.0),
                )),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 56.0, vertical: 20.0),
              child: headerText(
                  texto: 'High Technology in Profitable Investments',
                  color: Colors.white,
                  fontSize: 36.0),
            ),
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
            roundedButton(
                context: context,
                labelButton: "Log in",
                color: orange,
                func: () {
                  Navigator.pushNamed(context, "login");
                }),
            roundedButton(
                context: context,
                labelButton: "Connect with Facebook",
                color: fbButtonColor,
                isWithIcon: true,
                icon: const AssetImage("assets/facebook.webp"),
                // ignore: avoid_print
                func: () => print("goToFacebook")),
            roundedButton(
                context: context,
                labelButton: "Connect with instagram",
                color: Colors.red,
                isWithIcon: true,
                icon: const AssetImage('assets/instagram.jpeg'),
                // ignore: avoid_print
                func: () => print("goToInstagram")),
            roundedButton(
                context: context,
                labelButton: "Connect with reddit",
                color: Colors.green,
                isWithIcon: true,
                icon: const AssetImage('assets/reddit.png'),
                // ignore: avoid_print
                func: () => print("goToReddit")),
          ],
        ),
      ],
    ));
  }
}
