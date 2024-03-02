import 'package:flutter/material.dart';
import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/header_text.dart';

Widget cardVertical({
  required BuildContext context,
  required double width,
  required double height,
  required ImageProvider<Object> image,
  required String title,
  required String subTitle,
}) {
  return Container(
    padding: const EdgeInsets.only(right: 5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image(
            width: width,
            height: height,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 4.0),
              child: headerText(
                  texto: title, fontWeight: FontWeight.w500, fontSize: 15.0),
            ),
            Container(
              margin: const EdgeInsets.only(top: 0.0),
              child: headerText(
                  texto: subTitle,
                  color: gris,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0),
            ),
          ],
        )
      ],
    ),
  );
}
