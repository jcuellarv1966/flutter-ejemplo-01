import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';

class EmptyOrderView extends StatelessWidget {
  const EmptyOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        elevation: 0.5,
        leading: const Text(""),
        backgroundColor: white,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 72.0),
          child: headerText(
              texto: "My Order",
              color: primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 24.0,
              textAlign: TextAlign.center),
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                width: 216,
                height: 216,
                image: AssetImage("assets/emptyOrder.jpeg"),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: headerText(
                    texto: "Cart Empty",
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 36),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                margin: const EdgeInsets.symmetric(horizontal: 60.0),
                child: headerText(
                    texto:
                        "Good election is always available! Go ahead, order some yummy items from the Financial Assets",
                    color: gris,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
