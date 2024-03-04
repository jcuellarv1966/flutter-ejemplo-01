import 'package:flutter/material.dart';

import 'package:curso_delivery_app/src/colors/colors.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Headers/header_text.dart';
import 'package:curso_delivery_app/src/features/presentation/common-widgets/Cards/favourites_card.dart';

class CategorieDetailPage extends StatelessWidget {
  const CategorieDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: const IconThemeData(
              color: Colors.white, //change your color here
            ),
            expandedHeight: 240.0,
            backgroundColor: orange,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  const ClipRRect(
                    child: Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1579689252125-767b773f3f69?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJvbHNhJTIwZGUlMjBWYWxvcmVzfGVufDB8MXwwfHx8MA%3D%3D"),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            texto: "Notes",
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 36.0,
                            textAlign: TextAlign.center),
                        headerText(
                            texto: "Notes of FED",
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 28.0,
                            textAlign: TextAlign.center),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 5.0),
                    child: headerText(
                        texto: "Details",
                        color: const Color.fromRGBO(51, 58, 77, 1.0),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                        textAlign: TextAlign.left),
                  ),
                  Column(
                    children: [
                      favouritesCard(
                          context: context,
                          marginBottom: 15.0,
                          image: const NetworkImage(
                              "https://images.unsplash.com/photo-1579621970795-87facc2f976d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D"),
                          title: "This is a first option",
                          subTitle: "Detail of this option ...",
                          reviews: "4.50",
                          ratings: "240 ratings",
                          buttonText: "Delivery",
                          hasActionButton: true,
                          isFavourite: true),
                      favouritesCard(
                          context: context,
                          marginBottom: 15.0,
                          image: const NetworkImage(
                              "https://images.unsplash.com/photo-1544377193-33dcf4d68fb5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZmluYW5jZXxlbnwwfHwwfHx8MA%3D%3D"),
                          title: "This is a second option",
                          subTitle: "Detail of this option ...",
                          reviews: "2.50",
                          ratings: "360 ratings",
                          buttonText: "Delivery",
                          hasActionButton: true,
                          isFavourite: false),
                      favouritesCard(
                          context: context,
                          marginBottom: 15.0,
                          image: const NetworkImage(
                              "https://images.unsplash.com/photo-1590283603385-17ffb3a7f29f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                          title: "This is a third option",
                          subTitle: "Detail of this option ...",
                          reviews: "5.25",
                          ratings: "120 ratings",
                          buttonText: "Delivery",
                          hasActionButton: true),
                      favouritesCard(
                          context: context,
                          marginBottom: 15.0,
                          image: const NetworkImage(
                              "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                          title: "This is a fourth option",
                          subTitle: "Detail of this option ...",
                          reviews: "3.25",
                          ratings: "520 ratings",
                          buttonText: "Delivery",
                          hasActionButton: true),
                      favouritesCard(
                          context: context,
                          marginBottom: 15.0,
                          image: const NetworkImage(
                              "https://images.unsplash.com/photo-1526304640581-d334cdbbf45e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                          title: "This is a fifth option",
                          subTitle: "Detail of fifth option ...",
                          reviews: "3.00",
                          ratings: "225 ratings",
                          buttonText: "Delivery",
                          hasActionButton: true),
                      favouritesCard(
                          context: context,
                          marginBottom: 15.0,
                          image: const NetworkImage(
                              "https://plus.unsplash.com/premium_photo-1670249421324-232b654455d0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fGZpbmFuY2V8ZW58MHx8MHx8fDA%3D"),
                          title: "This is a sixth option",
                          subTitle: "Detail of this option ...",
                          reviews: "4.85",
                          ratings: "124 ratings",
                          buttonText: "Delivery",
                          hasActionButton: true),
                    ],
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
