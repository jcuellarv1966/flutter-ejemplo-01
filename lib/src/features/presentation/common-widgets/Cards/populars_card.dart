import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';

// ignore: non_constant_identifier_names
Widget PopularesCard({
  required BuildContext context,
  double marginTop = 0.0,
  double marginRight = 0.0,
  double marginBottom = 0.0,
  double marginLeft = 0.0,
  required ImageProvider<Object> image,
  required String title,
  required String subTitle,
  required String reviews,
  required String ratings,
  String buttonText = "",
  required bool hasActionButton,
}) {
  return Container(
    margin: EdgeInsets.only(
        top: marginTop,
        right: marginRight,
        bottom: marginBottom,
        left: marginLeft),
    padding: const EdgeInsets.all(3),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              child:
                  Image(width: 80, height: 80, fit: BoxFit.cover, image: image),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: headerText(texto: title, fontSize: 16.0)),
                Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: headerText(
                        texto: subTitle,
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0)),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: amarillo, size: 16.0),
                      headerText(
                          texto: reviews,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: headerText(
                            texto: ratings,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15.0),
                          width: 110.0,
                          height: 18.0,
                          child: hasActionButton
                              ? ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: orange,
                                    textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  onPressed: () {},
                                  // "Delivery"
                                  child: Text(buttonText),
                                )
                              : const Text("")),
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
