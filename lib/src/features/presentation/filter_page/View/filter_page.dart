import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_text.dart';
import 'package:flutter/widgets.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: Colors.white,
          title: Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 106.0, vertical: 20.0),
              child: headerText(
                  texto: "Filters",
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0)),
          leading: Container(
            padding: const EdgeInsets.only(top: 20.0, left: 15.0),
            child: headerText(
                texto: "Reset", fontWeight: FontWeight.w500, fontSize: 15.0),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.only(top: 0.0, right: 15.0),
                child: headerText(
                    texto: "Done",
                    color: orange,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
