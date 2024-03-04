import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';

Widget favouritesCard({
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
  bool hasActionButton = false,
  bool isFavourite = false,
}) {
  return Container(
    margin: EdgeInsets.only(
        top: marginTop,
        right: marginRight,
        bottom: marginBottom,
        left: marginLeft),
    padding: const EdgeInsets.all(5.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            offset: Offset(0.0, 5.0),
            blurRadius: 10.0,
          )
        ]),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
            width: 90.0,
            height: 90.0,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    child: headerText(
                        texto: title,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  const SizedBox(width: 30.0),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark,
                          size: 35.0,
                          color: isFavourite ? rosa : Colors.grey[300]))
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 5.0),
                child: headerText(
                    texto: subTitle,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  children: [
                    const Icon(Icons.star, color: amarillo, size: 16.0),
                    Container(
                      margin: const EdgeInsets.only(left: 5.0),
                      child: headerText(
                          texto: reviews,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: headerText(
                          texto: ratings,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        width: 110.0,
                        height: 18.0,
                        child: hasActionButton
                            ? ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 1.0,
                                  backgroundColor: orange,
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontStyle: FontStyle.normal),
                                ),
                                onPressed: () {},
                                child: headerText(
                                  texto: buttonText,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              )
                            : const Text("")),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
