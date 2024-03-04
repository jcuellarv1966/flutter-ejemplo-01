import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';

Widget headerDoubleText(
    {required String textHeader,
    required String textAction,
    required Function() func}) {
  return Container(
    margin: const EdgeInsets.only(top: 5.0),
    child: Row(
      children: [
        headerText(texto: textHeader, fontSize: 20.0),
        const Spacer(),
        GestureDetector(
          onTap: func,
          child: headerText(
              texto: textAction,
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 15.0),
        ),
      ],
    ),
  );
}
